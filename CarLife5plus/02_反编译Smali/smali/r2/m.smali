.class public final Lr2/m;
.super Le4/b;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final synthetic d:Lr2/u;

.field public final synthetic e:Lq2/h0;

.field public final synthetic f:Lr2/u;


# direct methods
.method public constructor <init>(Lr2/u;Lq2/h0;Lr2/u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr2/m;->d:Lr2/u;

    .line 2
    .line 3
    iput-object p2, p0, Lr2/m;->e:Lq2/h0;

    .line 4
    .line 5
    iput-object p3, p0, Lr2/m;->f:Lr2/u;

    .line 6
    .line 7
    invoke-direct {p0}, Le4/b;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final c(Landroid/view/View;Lf4/e;)V
    .locals 7

    .line 1
    iget-object v0, p2, Lf4/e;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2
    .line 3
    iget-object v1, p0, Le4/b;->a:Landroid/view/View$AccessibilityDelegate;

    .line 4
    .line 5
    invoke-virtual {v1, p1, v0}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lr2/m;->d:Lr2/u;

    .line 9
    .line 10
    iget-object v1, p1, Lr2/u;->s:Lr2/b0;

    .line 11
    .line 12
    invoke-virtual {v1}, Lr2/b0;->q()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v2, p0, Lr2/m;->e:Lq2/h0;

    .line 23
    .line 24
    invoke-virtual {v2}, Lq2/h0;->v()Lq2/h0;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    :goto_0
    const/4 v4, 0x0

    .line 29
    if-eqz v3, :cond_2

    .line 30
    .line 31
    iget-object v5, v3, Lq2/h0;->E:Lq2/d1;

    .line 32
    .line 33
    const/16 v6, 0x8

    .line 34
    .line 35
    invoke-virtual {v5, v6}, Lq2/d1;->d(I)Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {v3}, Lq2/h0;->v()Lq2/h0;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    move-object v3, v4

    .line 48
    :goto_1
    if-eqz v3, :cond_3

    .line 49
    .line 50
    iget v3, v3, Lq2/h0;->b:I

    .line 51
    .line 52
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    :cond_3
    const/4 v3, -0x1

    .line 57
    if-eqz v4, :cond_4

    .line 58
    .line 59
    invoke-virtual {p1}, Lr2/u;->getSemanticsOwner()Ly2/o;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {v5}, Ly2/o;->a()Ly2/m;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    iget v5, v5, Ly2/m;->g:I

    .line 68
    .line 69
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    if-ne v6, v5, :cond_5

    .line 74
    .line 75
    :cond_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    iput v4, p2, Lf4/e;->b:I

    .line 84
    .line 85
    iget-object p2, p0, Lr2/m;->f:Lr2/u;

    .line 86
    .line 87
    invoke-virtual {v0, p2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    .line 88
    .line 89
    .line 90
    iget v2, v2, Lq2/h0;->b:I

    .line 91
    .line 92
    iget-object v4, v1, Lr2/b0;->E:Ls/u;

    .line 93
    .line 94
    invoke-virtual {v4, v2}, Ls/u;->d(I)I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    const/16 v5, 0x16

    .line 99
    .line 100
    if-eq v4, v3, :cond_8

    .line 101
    .line 102
    invoke-virtual {p1}, Lr2/u;->getAndroidViewsHandler$ui_release()Lr2/w0;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    invoke-static {v6, v4}, Lr2/j0;->u(Lr2/w0;I)Lq3/i;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    if-eqz v6, :cond_6

    .line 111
    .line 112
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 113
    .line 114
    if-lt v4, v5, :cond_7

    .line 115
    .line 116
    invoke-static {v0, v6}, Landroid/support/v4/media/session/v;->f(Landroid/view/accessibility/AccessibilityNodeInfo;Lq3/i;)V

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_6
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 121
    .line 122
    if-lt v6, v5, :cond_7

    .line 123
    .line 124
    invoke-static {v0, p2, v4}, Landroid/support/v4/media/session/v;->e(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;I)V

    .line 125
    .line 126
    .line 127
    :cond_7
    :goto_2
    iget-object v4, v1, Lr2/b0;->G:Ljava/lang/String;

    .line 128
    .line 129
    invoke-static {p1, v2, v0, v4}, Lr2/u;->h(Lr2/u;ILandroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    :cond_8
    iget-object v4, v1, Lr2/b0;->F:Ls/u;

    .line 133
    .line 134
    invoke-virtual {v4, v2}, Ls/u;->d(I)I

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    if-eq v4, v3, :cond_b

    .line 139
    .line 140
    invoke-virtual {p1}, Lr2/u;->getAndroidViewsHandler$ui_release()Lr2/w0;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-static {v3, v4}, Lr2/j0;->u(Lr2/w0;I)Lq3/i;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    if-eqz v3, :cond_9

    .line 149
    .line 150
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 151
    .line 152
    if-lt p2, v5, :cond_a

    .line 153
    .line 154
    invoke-static {v0, v3}, Landroid/support/v4/media/session/v;->d(Landroid/view/accessibility/AccessibilityNodeInfo;Lq3/i;)V

    .line 155
    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_9
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 159
    .line 160
    if-lt v3, v5, :cond_a

    .line 161
    .line 162
    invoke-static {v0, p2, v4}, Landroid/support/v4/media/session/v;->c(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;I)V

    .line 163
    .line 164
    .line 165
    :cond_a
    :goto_3
    iget-object p2, v1, Lr2/b0;->H:Ljava/lang/String;

    .line 166
    .line 167
    invoke-static {p1, v2, v0, p2}, Lr2/u;->h(Lr2/u;ILandroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    :cond_b
    return-void
.end method
