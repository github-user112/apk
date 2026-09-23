.class public final Lo/e;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lo/e;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lo/e;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final a(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final b(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final c(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final d(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    .line 1
    iget v0, p0, Lo/e;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lo/e;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ly1/e;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-boolean v1, v0, Ly1/e;->d:Z

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object v1, v0, Ly1/e;->e:Ly1/d;

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    iput-boolean p1, v0, Ly1/e;->d:Z

    .line 29
    .line 30
    :cond_0
    :pswitch_0
    return-void

    .line 31
    :pswitch_1
    iget-object p1, p0, Lo/e;->b:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p1, Lr2/b0;

    .line 34
    .line 35
    iget-object v0, p1, Lr2/b0;->g:Landroid/view/accessibility/AccessibilityManager;

    .line 36
    .line 37
    const/4 v1, -0x1

    .line 38
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iput-object v1, p1, Lr2/b0;->k:Ljava/util/List;

    .line 43
    .line 44
    iget-object v1, p1, Lr2/b0;->i:Lr2/v;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 47
    .line 48
    .line 49
    iget-object p1, p1, Lr2/b0;->j:Lr2/w;

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 52
    .line 53
    .line 54
    :pswitch_2
    return-void

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 5

    .line 1
    iget v0, p0, Lo/e;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lo/e;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ly1/e;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-boolean v1, v0, Ly1/e;->d:Z

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object v1, v0, Ly1/e;->e:Ly1/d;

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    iput-boolean p1, v0, Ly1/e;->d:Z

    .line 29
    .line 30
    :cond_0
    return-void

    .line 31
    :pswitch_0
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lo/e;->b:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p1, Lac/j1;

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-virtual {p1, v0}, Lac/c1;->a(Ljava/util/concurrent/CancellationException;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :pswitch_1
    iget-object p1, p0, Lo/e;->b:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p1, Lr2/a;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sget-object v1, Le4/n0;->i:Le4/n0;

    .line 52
    .line 53
    invoke-static {v0, v1}, Lwb/l;->M(Ljava/lang/Object;Lf9/k;)Lwb/j;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-interface {v0}, Lwb/j;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    const/4 v2, 0x0

    .line 66
    const/4 v3, 0x0

    .line 67
    if-eqz v1, :cond_4

    .line 68
    .line 69
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Landroid/view/ViewParent;

    .line 74
    .line 75
    instance-of v4, v1, Landroid/view/View;

    .line 76
    .line 77
    if-eqz v4, :cond_1

    .line 78
    .line 79
    check-cast v1, Landroid/view/View;

    .line 80
    .line 81
    const-string v4, "<this>"

    .line 82
    .line 83
    invoke-static {v1, v4}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const v4, 0x7f08006c

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    instance-of v4, v1, Ljava/lang/Boolean;

    .line 94
    .line 95
    if-eqz v4, :cond_2

    .line 96
    .line 97
    check-cast v1, Ljava/lang/Boolean;

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_2
    move-object v1, v2

    .line 101
    :goto_0
    if-eqz v1, :cond_3

    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    :cond_3
    if-eqz v3, :cond_1

    .line 108
    .line 109
    const/4 v3, 0x1

    .line 110
    :cond_4
    if-nez v3, :cond_6

    .line 111
    .line 112
    iget-object v0, p1, Lr2/a;->c:Lr2/f3;

    .line 113
    .line 114
    if-eqz v0, :cond_5

    .line 115
    .line 116
    invoke-virtual {v0}, Lr2/f3;->h()V

    .line 117
    .line 118
    .line 119
    :cond_5
    iput-object v2, p1, Lr2/a;->c:Lr2/f3;

    .line 120
    .line 121
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 122
    .line 123
    .line 124
    :cond_6
    return-void

    .line 125
    :pswitch_2
    iget-object p1, p0, Lo/e;->b:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast p1, Lr2/b0;

    .line 128
    .line 129
    iget-object v0, p1, Lr2/b0;->l:Landroid/os/Handler;

    .line 130
    .line 131
    iget-object v1, p1, Lr2/b0;->N:Landroidx/lifecycle/z;

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 134
    .line 135
    .line 136
    iget-object v0, p1, Lr2/b0;->g:Landroid/view/accessibility/AccessibilityManager;

    .line 137
    .line 138
    iget-object v1, p1, Lr2/b0;->i:Lr2/v;

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 141
    .line 142
    .line 143
    iget-object p1, p1, Lr2/b0;->j:Lr2/w;

    .line 144
    .line 145
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :pswitch_3
    iget-object v0, p0, Lo/e;->b:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast v0, Lo/d0;

    .line 152
    .line 153
    iget-object v1, v0, Lo/d0;->o:Landroid/view/ViewTreeObserver;

    .line 154
    .line 155
    if-eqz v1, :cond_8

    .line 156
    .line 157
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-nez v1, :cond_7

    .line 162
    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    iput-object v1, v0, Lo/d0;->o:Landroid/view/ViewTreeObserver;

    .line 168
    .line 169
    :cond_7
    iget-object v1, v0, Lo/d0;->o:Landroid/view/ViewTreeObserver;

    .line 170
    .line 171
    iget-object v0, v0, Lo/d0;->i:Lo/d;

    .line 172
    .line 173
    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 174
    .line 175
    .line 176
    :cond_8
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 177
    .line 178
    .line 179
    return-void

    .line 180
    :pswitch_4
    iget-object v0, p0, Lo/e;->b:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v0, Lo/g;

    .line 183
    .line 184
    iget-object v1, v0, Lo/g;->x:Landroid/view/ViewTreeObserver;

    .line 185
    .line 186
    if-eqz v1, :cond_a

    .line 187
    .line 188
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-nez v1, :cond_9

    .line 193
    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    iput-object v1, v0, Lo/g;->x:Landroid/view/ViewTreeObserver;

    .line 199
    .line 200
    :cond_9
    iget-object v1, v0, Lo/g;->x:Landroid/view/ViewTreeObserver;

    .line 201
    .line 202
    iget-object v0, v0, Lo/g;->i:Lo/d;

    .line 203
    .line 204
    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 205
    .line 206
    .line 207
    :cond_a
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 208
    .line 209
    .line 210
    return-void

    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
