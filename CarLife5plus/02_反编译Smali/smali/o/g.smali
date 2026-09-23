.class public final Lo/g;
.super Lo/u;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:I

.field public final d:I

.field public final e:Z

.field public final f:Landroid/os/Handler;

.field public final g:Ljava/util/ArrayList;

.field public final h:Ljava/util/ArrayList;

.field public final i:Lo/d;

.field public final j:Lo/e;

.field public final k:Lkb/a;

.field public l:I

.field public m:I

.field public n:Landroid/view/View;

.field public o:Landroid/view/View;

.field public p:I

.field public q:Z

.field public r:Z

.field public s:I

.field public t:I

.field public u:Z

.field public v:Z

.field public w:Lo/x;

.field public x:Landroid/view/ViewTreeObserver;

.field public y:Landroid/widget/PopupWindow$OnDismissListener;

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lo/g;->g:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lo/g;->h:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Lo/d;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-direct {v0, v1, p0}, Lo/d;-><init>(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lo/g;->i:Lo/d;

    .line 25
    .line 26
    new-instance v0, Lo/e;

    .line 27
    .line 28
    invoke-direct {v0, v1, p0}, Lo/e;-><init>(ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lo/g;->j:Lo/e;

    .line 32
    .line 33
    new-instance v0, Lkb/a;

    .line 34
    .line 35
    const/16 v1, 0x8

    .line 36
    .line 37
    invoke-direct {v0, v1, p0}, Lkb/a;-><init>(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lo/g;->k:Lkb/a;

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lo/g;->l:I

    .line 44
    .line 45
    iput v0, p0, Lo/g;->m:I

    .line 46
    .line 47
    iput-object p1, p0, Lo/g;->b:Landroid/content/Context;

    .line 48
    .line 49
    iput-object p2, p0, Lo/g;->n:Landroid/view/View;

    .line 50
    .line 51
    iput p3, p0, Lo/g;->d:I

    .line 52
    .line 53
    iput-boolean p4, p0, Lo/g;->e:Z

    .line 54
    .line 55
    iput-boolean v0, p0, Lo/g;->u:Z

    .line 56
    .line 57
    invoke-virtual {p2}, Landroid/view/View;->getLayoutDirection()I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    const/4 p3, 0x1

    .line 62
    if-ne p2, p3, :cond_0

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    const/4 v0, 0x1

    .line 66
    :goto_0
    iput v0, p0, Lo/g;->p:I

    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 77
    .line 78
    div-int/lit8 p2, p2, 0x2

    .line 79
    .line 80
    const p3, 0x7f060017

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    iput p1, p0, Lo/g;->c:I

    .line 92
    .line 93
    new-instance p1, Landroid/os/Handler;

    .line 94
    .line 95
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 96
    .line 97
    .line 98
    iput-object p1, p0, Lo/g;->f:Landroid/os/Handler;

    .line 99
    .line 100
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lo/g;->h:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-lez v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lo/f;

    .line 15
    .line 16
    iget-object v0, v0, Lo/f;->a:Lp/j2;

    .line 17
    .line 18
    iget-object v0, v0, Lp/e2;->y:Lp/a0;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    return v0

    .line 28
    :cond_0
    return v2
.end method

.method public final b(Lo/m;Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lo/g;->h:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    if-ge v3, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Lo/f;

    .line 16
    .line 17
    iget-object v4, v4, Lo/f;->b:Lo/m;

    .line 18
    .line 19
    if-ne p1, v4, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v3, -0x1

    .line 26
    :goto_1
    if-gez v3, :cond_2

    .line 27
    .line 28
    goto/16 :goto_4

    .line 29
    .line 30
    :cond_2
    add-int/lit8 v1, v3, 0x1

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-ge v1, v4, :cond_3

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lo/f;

    .line 43
    .line 44
    iget-object v1, v1, Lo/f;->b:Lo/m;

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Lo/m;->c(Z)V

    .line 47
    .line 48
    .line 49
    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lo/f;

    .line 54
    .line 55
    iget-object v3, v1, Lo/f;->b:Lo/m;

    .line 56
    .line 57
    iget-object v1, v1, Lo/f;->a:Lp/j2;

    .line 58
    .line 59
    iget-object v4, v1, Lp/e2;->y:Lp/a0;

    .line 60
    .line 61
    invoke-virtual {v3, p0}, Lo/m;->r(Lo/y;)V

    .line 62
    .line 63
    .line 64
    iget-boolean v3, p0, Lo/g;->z:Z

    .line 65
    .line 66
    const/4 v5, 0x0

    .line 67
    if-eqz v3, :cond_5

    .line 68
    .line 69
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 70
    .line 71
    const/16 v6, 0x17

    .line 72
    .line 73
    if-lt v3, v6, :cond_4

    .line 74
    .line 75
    invoke-static {v4, v5}, Lp/g2;->b(Landroid/widget/PopupWindow;Landroid/transition/Transition;)V

    .line 76
    .line 77
    .line 78
    :cond_4
    invoke-virtual {v4, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 79
    .line 80
    .line 81
    :cond_5
    invoke-virtual {v1}, Lp/e2;->dismiss()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    const/4 v3, 0x1

    .line 89
    if-lez v1, :cond_6

    .line 90
    .line 91
    add-int/lit8 v4, v1, -0x1

    .line 92
    .line 93
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    check-cast v4, Lo/f;

    .line 98
    .line 99
    iget v4, v4, Lo/f;->c:I

    .line 100
    .line 101
    iput v4, p0, Lo/g;->p:I

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_6
    iget-object v4, p0, Lo/g;->n:Landroid/view/View;

    .line 105
    .line 106
    invoke-virtual {v4}, Landroid/view/View;->getLayoutDirection()I

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    if-ne v4, v3, :cond_7

    .line 111
    .line 112
    const/4 v4, 0x0

    .line 113
    goto :goto_2

    .line 114
    :cond_7
    const/4 v4, 0x1

    .line 115
    :goto_2
    iput v4, p0, Lo/g;->p:I

    .line 116
    .line 117
    :goto_3
    if-nez v1, :cond_b

    .line 118
    .line 119
    invoke-virtual {p0}, Lo/g;->dismiss()V

    .line 120
    .line 121
    .line 122
    iget-object p2, p0, Lo/g;->w:Lo/x;

    .line 123
    .line 124
    if-eqz p2, :cond_8

    .line 125
    .line 126
    invoke-interface {p2, p1, v3}, Lo/x;->b(Lo/m;Z)V

    .line 127
    .line 128
    .line 129
    :cond_8
    iget-object p1, p0, Lo/g;->x:Landroid/view/ViewTreeObserver;

    .line 130
    .line 131
    if-eqz p1, :cond_a

    .line 132
    .line 133
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    if-eqz p1, :cond_9

    .line 138
    .line 139
    iget-object p1, p0, Lo/g;->x:Landroid/view/ViewTreeObserver;

    .line 140
    .line 141
    iget-object p2, p0, Lo/g;->i:Lo/d;

    .line 142
    .line 143
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 144
    .line 145
    .line 146
    :cond_9
    iput-object v5, p0, Lo/g;->x:Landroid/view/ViewTreeObserver;

    .line 147
    .line 148
    :cond_a
    iget-object p1, p0, Lo/g;->o:Landroid/view/View;

    .line 149
    .line 150
    iget-object p2, p0, Lo/g;->j:Lo/e;

    .line 151
    .line 152
    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 153
    .line 154
    .line 155
    iget-object p1, p0, Lo/g;->y:Landroid/widget/PopupWindow$OnDismissListener;

    .line 156
    .line 157
    invoke-interface {p1}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :cond_b
    if-eqz p2, :cond_c

    .line 162
    .line 163
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    check-cast p1, Lo/f;

    .line 168
    .line 169
    iget-object p1, p1, Lo/f;->b:Lo/m;

    .line 170
    .line 171
    invoke-virtual {p1, v2}, Lo/m;->c(Z)V

    .line 172
    .line 173
    .line 174
    :cond_c
    :goto_4
    return-void
.end method

.method public final d()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final dismiss()V
    .locals 4

    .line 1
    iget-object v0, p0, Lo/g;->h:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-lez v1, :cond_1

    .line 8
    .line 9
    new-array v2, v1, [Lo/f;

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, [Lo/f;

    .line 16
    .line 17
    add-int/lit8 v1, v1, -0x1

    .line 18
    .line 19
    :goto_0
    if-ltz v1, :cond_1

    .line 20
    .line 21
    aget-object v2, v0, v1

    .line 22
    .line 23
    iget-object v3, v2, Lo/f;->a:Lp/j2;

    .line 24
    .line 25
    iget-object v3, v3, Lp/e2;->y:Lp/a0;

    .line 26
    .line 27
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    iget-object v2, v2, Lo/f;->a:Lp/j2;

    .line 34
    .line 35
    invoke-virtual {v2}, Lp/e2;->dismiss()V

    .line 36
    .line 37
    .line 38
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-void
.end method

.method public final e(Lo/e0;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lo/g;->h:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lo/f;

    .line 19
    .line 20
    iget-object v3, v1, Lo/f;->b:Lo/m;

    .line 21
    .line 22
    if-ne p1, v3, :cond_0

    .line 23
    .line 24
    iget-object p1, v1, Lo/f;->a:Lp/j2;

    .line 25
    .line 26
    iget-object p1, p1, Lp/e2;->c:Lp/r1;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 29
    .line 30
    .line 31
    return v2

    .line 32
    :cond_1
    invoke-virtual {p1}, Lo/m;->hasVisibleItems()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lo/g;->l(Lo/m;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lo/g;->w:Lo/x;

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-interface {v0, p1}, Lo/x;->I(Lo/m;)Z

    .line 46
    .line 47
    .line 48
    :cond_2
    return v2

    .line 49
    :cond_3
    const/4 p1, 0x0

    .line 50
    return p1
.end method

.method public final f()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lo/g;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    iget-object v0, p0, Lo/g;->g:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lo/m;

    .line 25
    .line 26
    invoke-virtual {p0, v2}, Lo/g;->u(Lo/m;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lo/g;->n:Landroid/view/View;

    .line 34
    .line 35
    iput-object v0, p0, Lo/g;->o:Landroid/view/View;

    .line 36
    .line 37
    if-eqz v0, :cond_4

    .line 38
    .line 39
    iget-object v1, p0, Lo/g;->x:Landroid/view/ViewTreeObserver;

    .line 40
    .line 41
    if-nez v1, :cond_2

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    const/4 v1, 0x0

    .line 46
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lo/g;->x:Landroid/view/ViewTreeObserver;

    .line 51
    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    iget-object v1, p0, Lo/g;->i:Lo/d;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    iget-object v0, p0, Lo/g;->o:Landroid/view/View;

    .line 60
    .line 61
    iget-object v1, p0, Lo/g;->j:Lo/e;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 64
    .line 65
    .line 66
    :cond_4
    :goto_2
    return-void
.end method

.method public final g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lo/g;->h:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lo/f;

    .line 18
    .line 19
    iget-object v1, v1, Lo/f;->a:Lp/j2;

    .line 20
    .line 21
    iget-object v1, v1, Lp/e2;->c:Lp/r1;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    instance-of v2, v1, Landroid/widget/HeaderViewListAdapter;

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lo/j;

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    check-cast v1, Lo/j;

    .line 41
    .line 42
    :goto_1
    invoke-virtual {v1}, Lo/j;->notifyDataSetChanged()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    return-void
.end method

.method public final h()Lp/r1;
    .locals 2

    .line 1
    iget-object v0, p0, Lo/g;->h:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/lit8 v1, v1, -0x1

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lo/f;

    .line 22
    .line 23
    iget-object v0, v0, Lo/f;->a:Lp/j2;

    .line 24
    .line 25
    iget-object v0, v0, Lp/e2;->c:Lp/r1;

    .line 26
    .line 27
    return-object v0
.end method

.method public final j(Lo/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/g;->w:Lo/x;

    .line 2
    .line 3
    return-void
.end method

.method public final l(Lo/m;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/g;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p1, p0, v0}, Lo/m;->b(Lo/y;Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lo/g;->a()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lo/g;->u(Lo/m;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lo/g;->g:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final n(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/g;->n:Landroid/view/View;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lo/g;->n:Landroid/view/View;

    .line 6
    .line 7
    iget v0, p0, Lo/g;->l:I

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-static {v0, p1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput p1, p0, Lo/g;->m:I

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final o(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lo/g;->u:Z

    .line 2
    .line 3
    return-void
.end method

.method public final onDismiss()V
    .locals 6

    .line 1
    iget-object v0, p0, Lo/g;->h:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    if-ge v3, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Lo/f;

    .line 16
    .line 17
    iget-object v5, v4, Lo/f;->a:Lp/j2;

    .line 18
    .line 19
    iget-object v5, v5, Lp/e2;->y:Lp/a0;

    .line 20
    .line 21
    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-nez v5, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v4, 0x0

    .line 32
    :goto_1
    if-eqz v4, :cond_2

    .line 33
    .line 34
    iget-object v0, v4, Lo/f;->b:Lo/m;

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Lo/m;->c(Z)V

    .line 37
    .line 38
    .line 39
    :cond_2
    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p3, 0x1

    .line 6
    if-ne p1, p3, :cond_0

    .line 7
    .line 8
    const/16 p1, 0x52

    .line 9
    .line 10
    if-ne p2, p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lo/g;->dismiss()V

    .line 13
    .line 14
    .line 15
    return p3

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public final p(I)V
    .locals 1

    .line 1
    iget v0, p0, Lo/g;->l:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lo/g;->l:I

    .line 6
    .line 7
    iget-object v0, p0, Lo/g;->n:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput p1, p0, Lo/g;->m:I

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final q(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lo/g;->q:Z

    .line 3
    .line 4
    iput p1, p0, Lo/g;->s:I

    .line 5
    .line 6
    return-void
.end method

.method public final r(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/g;->y:Landroid/widget/PopupWindow$OnDismissListener;

    .line 2
    .line 3
    return-void
.end method

.method public final s(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lo/g;->v:Z

    .line 2
    .line 3
    return-void
.end method

.method public final t(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lo/g;->r:Z

    .line 3
    .line 4
    iput p1, p0, Lo/g;->t:I

    .line 5
    .line 6
    return-void
.end method

.method public final u(Lo/m;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lo/g;->b:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    new-instance v4, Lo/j;

    .line 12
    .line 13
    iget-boolean v5, v0, Lo/g;->e:Z

    .line 14
    .line 15
    const v6, 0x7f0b000b

    .line 16
    .line 17
    .line 18
    invoke-direct {v4, v1, v3, v5, v6}, Lo/j;-><init>(Lo/m;Landroid/view/LayoutInflater;ZI)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lo/g;->a()Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    const/4 v6, 0x1

    .line 26
    if-nez v5, :cond_0

    .line 27
    .line 28
    iget-boolean v5, v0, Lo/g;->u:Z

    .line 29
    .line 30
    if-eqz v5, :cond_0

    .line 31
    .line 32
    iput-boolean v6, v4, Lo/j;->c:Z

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_0
    invoke-virtual {v0}, Lo/g;->a()Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_3

    .line 40
    .line 41
    iget-object v5, v1, Lo/m;->f:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    const/4 v8, 0x0

    .line 48
    :goto_0
    if-ge v8, v5, :cond_2

    .line 49
    .line 50
    invoke-virtual {v1, v8}, Lo/m;->getItem(I)Landroid/view/MenuItem;

    .line 51
    .line 52
    .line 53
    move-result-object v9

    .line 54
    invoke-interface {v9}, Landroid/view/MenuItem;->isVisible()Z

    .line 55
    .line 56
    .line 57
    move-result v10

    .line 58
    if-eqz v10, :cond_1

    .line 59
    .line 60
    invoke-interface {v9}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 61
    .line 62
    .line 63
    move-result-object v9

    .line 64
    if-eqz v9, :cond_1

    .line 65
    .line 66
    const/4 v5, 0x1

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    const/4 v5, 0x0

    .line 72
    :goto_1
    iput-boolean v5, v4, Lo/j;->c:Z

    .line 73
    .line 74
    :cond_3
    :goto_2
    iget v5, v0, Lo/g;->c:I

    .line 75
    .line 76
    invoke-static {v4, v2, v5}, Lo/u;->m(Landroid/widget/ListAdapter;Landroid/content/Context;I)I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    new-instance v8, Lp/j2;

    .line 81
    .line 82
    iget v9, v0, Lo/g;->d:I

    .line 83
    .line 84
    const/4 v10, 0x0

    .line 85
    invoke-direct {v8, v2, v10, v9}, Lp/e2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    .line 87
    .line 88
    iget-object v2, v0, Lo/g;->k:Lkb/a;

    .line 89
    .line 90
    iput-object v2, v8, Lp/j2;->C:Lkb/a;

    .line 91
    .line 92
    iput-object v0, v8, Lp/e2;->p:Landroid/widget/AdapterView$OnItemClickListener;

    .line 93
    .line 94
    iget-object v2, v8, Lp/e2;->y:Lp/a0;

    .line 95
    .line 96
    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 97
    .line 98
    .line 99
    iget-object v9, v0, Lo/g;->n:Landroid/view/View;

    .line 100
    .line 101
    iput-object v9, v8, Lp/e2;->o:Landroid/view/View;

    .line 102
    .line 103
    iget v9, v0, Lo/g;->m:I

    .line 104
    .line 105
    iput v9, v8, Lp/e2;->l:I

    .line 106
    .line 107
    iput-boolean v6, v8, Lp/e2;->x:Z

    .line 108
    .line 109
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 110
    .line 111
    .line 112
    const/4 v9, 0x2

    .line 113
    invoke-virtual {v2, v9}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v8, v4}, Lp/e2;->o(Landroid/widget/ListAdapter;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v8, v5}, Lp/e2;->q(I)V

    .line 120
    .line 121
    .line 122
    iget v4, v0, Lo/g;->m:I

    .line 123
    .line 124
    iput v4, v8, Lp/e2;->l:I

    .line 125
    .line 126
    iget-object v4, v0, Lo/g;->h:Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 129
    .line 130
    .line 131
    move-result v11

    .line 132
    if-lez v11, :cond_d

    .line 133
    .line 134
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 135
    .line 136
    .line 137
    move-result v11

    .line 138
    sub-int/2addr v11, v6

    .line 139
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v11

    .line 143
    check-cast v11, Lo/f;

    .line 144
    .line 145
    iget-object v12, v11, Lo/f;->b:Lo/m;

    .line 146
    .line 147
    iget-object v13, v12, Lo/m;->f:Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 150
    .line 151
    .line 152
    move-result v13

    .line 153
    const/4 v14, 0x0

    .line 154
    :goto_3
    if-ge v14, v13, :cond_5

    .line 155
    .line 156
    invoke-virtual {v12, v14}, Lo/m;->getItem(I)Landroid/view/MenuItem;

    .line 157
    .line 158
    .line 159
    move-result-object v15

    .line 160
    invoke-interface {v15}, Landroid/view/MenuItem;->hasSubMenu()Z

    .line 161
    .line 162
    .line 163
    move-result v16

    .line 164
    if-eqz v16, :cond_4

    .line 165
    .line 166
    invoke-interface {v15}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    .line 167
    .line 168
    .line 169
    move-result-object v9

    .line 170
    if-ne v1, v9, :cond_4

    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_4
    add-int/lit8 v14, v14, 0x1

    .line 174
    .line 175
    const/4 v9, 0x2

    .line 176
    goto :goto_3

    .line 177
    :cond_5
    move-object v15, v10

    .line 178
    :goto_4
    if-nez v15, :cond_6

    .line 179
    .line 180
    move-object v6, v10

    .line 181
    const/16 v17, 0x0

    .line 182
    .line 183
    goto :goto_9

    .line 184
    :cond_6
    iget-object v9, v11, Lo/f;->a:Lp/j2;

    .line 185
    .line 186
    iget-object v9, v9, Lp/e2;->c:Lp/r1;

    .line 187
    .line 188
    invoke-virtual {v9}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 189
    .line 190
    .line 191
    move-result-object v12

    .line 192
    instance-of v13, v12, Landroid/widget/HeaderViewListAdapter;

    .line 193
    .line 194
    if-eqz v13, :cond_7

    .line 195
    .line 196
    check-cast v12, Landroid/widget/HeaderViewListAdapter;

    .line 197
    .line 198
    invoke-virtual {v12}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    .line 199
    .line 200
    .line 201
    move-result v13

    .line 202
    invoke-virtual {v12}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    .line 203
    .line 204
    .line 205
    move-result-object v12

    .line 206
    check-cast v12, Lo/j;

    .line 207
    .line 208
    goto :goto_5

    .line 209
    :cond_7
    check-cast v12, Lo/j;

    .line 210
    .line 211
    const/4 v13, 0x0

    .line 212
    :goto_5
    invoke-virtual {v12}, Lo/j;->getCount()I

    .line 213
    .line 214
    .line 215
    move-result v14

    .line 216
    const/4 v10, 0x0

    .line 217
    const/16 v17, 0x0

    .line 218
    .line 219
    :goto_6
    const/4 v7, -0x1

    .line 220
    if-ge v10, v14, :cond_9

    .line 221
    .line 222
    invoke-virtual {v12, v10}, Lo/j;->b(I)Lo/o;

    .line 223
    .line 224
    .line 225
    move-result-object v6

    .line 226
    if-ne v15, v6, :cond_8

    .line 227
    .line 228
    goto :goto_7

    .line 229
    :cond_8
    add-int/lit8 v10, v10, 0x1

    .line 230
    .line 231
    const/4 v6, 0x1

    .line 232
    goto :goto_6

    .line 233
    :cond_9
    const/4 v10, -0x1

    .line 234
    :goto_7
    if-ne v10, v7, :cond_b

    .line 235
    .line 236
    :cond_a
    :goto_8
    const/4 v6, 0x0

    .line 237
    goto :goto_9

    .line 238
    :cond_b
    add-int/2addr v10, v13

    .line 239
    invoke-virtual {v9}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 240
    .line 241
    .line 242
    move-result v6

    .line 243
    sub-int/2addr v10, v6

    .line 244
    if-ltz v10, :cond_a

    .line 245
    .line 246
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    .line 247
    .line 248
    .line 249
    move-result v6

    .line 250
    if-lt v10, v6, :cond_c

    .line 251
    .line 252
    goto :goto_8

    .line 253
    :cond_c
    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 254
    .line 255
    .line 256
    move-result-object v6

    .line 257
    goto :goto_9

    .line 258
    :cond_d
    const/16 v17, 0x0

    .line 259
    .line 260
    const/4 v6, 0x0

    .line 261
    const/4 v11, 0x0

    .line 262
    :goto_9
    if-eqz v6, :cond_1a

    .line 263
    .line 264
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 265
    .line 266
    const/16 v9, 0x1c

    .line 267
    .line 268
    if-gt v7, v9, :cond_e

    .line 269
    .line 270
    sget-object v7, Lp/j2;->D:Ljava/lang/reflect/Method;

    .line 271
    .line 272
    if-eqz v7, :cond_f

    .line 273
    .line 274
    const/4 v9, 0x1

    .line 275
    :try_start_0
    new-array v10, v9, [Ljava/lang/Object;

    .line 276
    .line 277
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 278
    .line 279
    aput-object v9, v10, v17

    .line 280
    .line 281
    invoke-virtual {v7, v2, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    .line 283
    .line 284
    goto :goto_a

    .line 285
    :catch_0
    const-string v7, "MenuPopupWindow"

    .line 286
    .line 287
    const-string v9, "Could not invoke setTouchModal() on PopupWindow. Oh well."

    .line 288
    .line 289
    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    .line 291
    .line 292
    goto :goto_a

    .line 293
    :cond_e
    const/4 v7, 0x0

    .line 294
    invoke-static {v2, v7}, Lp/h2;->a(Landroid/widget/PopupWindow;Z)V

    .line 295
    .line 296
    .line 297
    :cond_f
    :goto_a
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 298
    .line 299
    const/16 v9, 0x17

    .line 300
    .line 301
    if-lt v7, v9, :cond_10

    .line 302
    .line 303
    const/4 v9, 0x0

    .line 304
    invoke-static {v2, v9}, Lp/g2;->a(Landroid/widget/PopupWindow;Landroid/transition/Transition;)V

    .line 305
    .line 306
    .line 307
    :cond_10
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 308
    .line 309
    .line 310
    move-result v2

    .line 311
    const/16 v18, 0x1

    .line 312
    .line 313
    add-int/lit8 v2, v2, -0x1

    .line 314
    .line 315
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    check-cast v2, Lo/f;

    .line 320
    .line 321
    iget-object v2, v2, Lo/f;->a:Lp/j2;

    .line 322
    .line 323
    iget-object v2, v2, Lp/e2;->c:Lp/r1;

    .line 324
    .line 325
    const/4 v9, 0x2

    .line 326
    new-array v10, v9, [I

    .line 327
    .line 328
    invoke-virtual {v2, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 329
    .line 330
    .line 331
    new-instance v9, Landroid/graphics/Rect;

    .line 332
    .line 333
    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 334
    .line 335
    .line 336
    iget-object v12, v0, Lo/g;->o:Landroid/view/View;

    .line 337
    .line 338
    invoke-virtual {v12, v9}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 339
    .line 340
    .line 341
    iget v12, v0, Lo/g;->p:I

    .line 342
    .line 343
    const/4 v13, 0x1

    .line 344
    if-ne v12, v13, :cond_13

    .line 345
    .line 346
    const/16 v17, 0x0

    .line 347
    .line 348
    aget v10, v10, v17

    .line 349
    .line 350
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 351
    .line 352
    .line 353
    move-result v2

    .line 354
    add-int/2addr v2, v10

    .line 355
    add-int/2addr v2, v5

    .line 356
    iget v9, v9, Landroid/graphics/Rect;->right:I

    .line 357
    .line 358
    if-le v2, v9, :cond_12

    .line 359
    .line 360
    :cond_11
    const/4 v2, 0x0

    .line 361
    :goto_b
    const/4 v9, 0x1

    .line 362
    goto :goto_d

    .line 363
    :cond_12
    :goto_c
    const/4 v2, 0x1

    .line 364
    goto :goto_b

    .line 365
    :cond_13
    const/16 v17, 0x0

    .line 366
    .line 367
    aget v2, v10, v17

    .line 368
    .line 369
    sub-int/2addr v2, v5

    .line 370
    if-gez v2, :cond_11

    .line 371
    .line 372
    goto :goto_c

    .line 373
    :goto_d
    if-ne v2, v9, :cond_14

    .line 374
    .line 375
    const/4 v9, 0x1

    .line 376
    goto :goto_e

    .line 377
    :cond_14
    const/4 v9, 0x0

    .line 378
    :goto_e
    iput v2, v0, Lo/g;->p:I

    .line 379
    .line 380
    const/16 v2, 0x1a

    .line 381
    .line 382
    const/4 v10, 0x5

    .line 383
    if-lt v7, v2, :cond_15

    .line 384
    .line 385
    iput-object v6, v8, Lp/e2;->o:Landroid/view/View;

    .line 386
    .line 387
    const/4 v2, 0x0

    .line 388
    const/4 v7, 0x0

    .line 389
    goto :goto_f

    .line 390
    :cond_15
    const/4 v2, 0x2

    .line 391
    new-array v7, v2, [I

    .line 392
    .line 393
    iget-object v12, v0, Lo/g;->n:Landroid/view/View;

    .line 394
    .line 395
    invoke-virtual {v12, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 396
    .line 397
    .line 398
    new-array v2, v2, [I

    .line 399
    .line 400
    invoke-virtual {v6, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 401
    .line 402
    .line 403
    iget v12, v0, Lo/g;->m:I

    .line 404
    .line 405
    and-int/lit8 v12, v12, 0x7

    .line 406
    .line 407
    const/16 v17, 0x0

    .line 408
    .line 409
    if-ne v12, v10, :cond_16

    .line 410
    .line 411
    aget v12, v7, v17

    .line 412
    .line 413
    iget-object v13, v0, Lo/g;->n:Landroid/view/View;

    .line 414
    .line 415
    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    .line 416
    .line 417
    .line 418
    move-result v13

    .line 419
    add-int/2addr v13, v12

    .line 420
    aput v13, v7, v17

    .line 421
    .line 422
    aget v12, v2, v17

    .line 423
    .line 424
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 425
    .line 426
    .line 427
    move-result v13

    .line 428
    add-int/2addr v13, v12

    .line 429
    aput v13, v2, v17

    .line 430
    .line 431
    :cond_16
    aget v12, v2, v17

    .line 432
    .line 433
    aget v13, v7, v17

    .line 434
    .line 435
    sub-int/2addr v12, v13

    .line 436
    const/16 v18, 0x1

    .line 437
    .line 438
    aget v2, v2, v18

    .line 439
    .line 440
    aget v7, v7, v18

    .line 441
    .line 442
    sub-int v7, v2, v7

    .line 443
    .line 444
    move v2, v7

    .line 445
    move v7, v12

    .line 446
    :goto_f
    iget v12, v0, Lo/g;->m:I

    .line 447
    .line 448
    and-int/2addr v12, v10

    .line 449
    if-ne v12, v10, :cond_19

    .line 450
    .line 451
    if-eqz v9, :cond_17

    .line 452
    .line 453
    add-int/2addr v7, v5

    .line 454
    goto :goto_10

    .line 455
    :cond_17
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 456
    .line 457
    .line 458
    move-result v5

    .line 459
    :cond_18
    sub-int/2addr v7, v5

    .line 460
    goto :goto_10

    .line 461
    :cond_19
    if-eqz v9, :cond_18

    .line 462
    .line 463
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 464
    .line 465
    .line 466
    move-result v5

    .line 467
    add-int/2addr v7, v5

    .line 468
    :goto_10
    iput v7, v8, Lp/e2;->f:I

    .line 469
    .line 470
    const/4 v9, 0x1

    .line 471
    iput-boolean v9, v8, Lp/e2;->k:Z

    .line 472
    .line 473
    iput-boolean v9, v8, Lp/e2;->j:Z

    .line 474
    .line 475
    invoke-virtual {v8, v2}, Lp/e2;->k(I)V

    .line 476
    .line 477
    .line 478
    goto :goto_12

    .line 479
    :cond_1a
    iget-boolean v2, v0, Lo/g;->q:Z

    .line 480
    .line 481
    if-eqz v2, :cond_1b

    .line 482
    .line 483
    iget v2, v0, Lo/g;->s:I

    .line 484
    .line 485
    iput v2, v8, Lp/e2;->f:I

    .line 486
    .line 487
    :cond_1b
    iget-boolean v2, v0, Lo/g;->r:Z

    .line 488
    .line 489
    if-eqz v2, :cond_1c

    .line 490
    .line 491
    iget v2, v0, Lo/g;->t:I

    .line 492
    .line 493
    invoke-virtual {v8, v2}, Lp/e2;->k(I)V

    .line 494
    .line 495
    .line 496
    :cond_1c
    iget-object v2, v0, Lo/u;->a:Landroid/graphics/Rect;

    .line 497
    .line 498
    if-eqz v2, :cond_1d

    .line 499
    .line 500
    new-instance v9, Landroid/graphics/Rect;

    .line 501
    .line 502
    invoke-direct {v9, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 503
    .line 504
    .line 505
    goto :goto_11

    .line 506
    :cond_1d
    const/4 v9, 0x0

    .line 507
    :goto_11
    iput-object v9, v8, Lp/e2;->w:Landroid/graphics/Rect;

    .line 508
    .line 509
    :goto_12
    new-instance v2, Lo/f;

    .line 510
    .line 511
    iget v5, v0, Lo/g;->p:I

    .line 512
    .line 513
    invoke-direct {v2, v8, v1, v5}, Lo/f;-><init>(Lp/j2;Lo/m;I)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    .line 518
    .line 519
    invoke-virtual {v8}, Lp/e2;->f()V

    .line 520
    .line 521
    .line 522
    iget-object v2, v8, Lp/e2;->c:Lp/r1;

    .line 523
    .line 524
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 525
    .line 526
    .line 527
    if-nez v11, :cond_1e

    .line 528
    .line 529
    iget-boolean v4, v0, Lo/g;->v:Z

    .line 530
    .line 531
    if-eqz v4, :cond_1e

    .line 532
    .line 533
    iget-object v4, v1, Lo/m;->m:Ljava/lang/CharSequence;

    .line 534
    .line 535
    if-eqz v4, :cond_1e

    .line 536
    .line 537
    const v4, 0x7f0b0012

    .line 538
    .line 539
    .line 540
    const/4 v7, 0x0

    .line 541
    invoke-virtual {v3, v4, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 542
    .line 543
    .line 544
    move-result-object v3

    .line 545
    check-cast v3, Landroid/widget/FrameLayout;

    .line 546
    .line 547
    const v4, 0x1020016

    .line 548
    .line 549
    .line 550
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 551
    .line 552
    .line 553
    move-result-object v4

    .line 554
    check-cast v4, Landroid/widget/TextView;

    .line 555
    .line 556
    invoke-virtual {v3, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 557
    .line 558
    .line 559
    iget-object v1, v1, Lo/m;->m:Ljava/lang/CharSequence;

    .line 560
    .line 561
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 562
    .line 563
    .line 564
    const/4 v9, 0x0

    .line 565
    invoke-virtual {v2, v3, v9, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 566
    .line 567
    .line 568
    invoke-virtual {v8}, Lp/e2;->f()V

    .line 569
    .line 570
    .line 571
    :cond_1e
    return-void
.end method
