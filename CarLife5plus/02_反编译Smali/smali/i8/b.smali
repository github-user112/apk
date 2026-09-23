.class public final Li8/b;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public e:Ljc/a;

.field public f:Lcom/muyetuge/carlifevehicle/service/AccessService;

.field public g:Landroid/view/accessibility/AccessibilityNodeInfo;

.field public h:I

.field public final synthetic i:Lcom/muyetuge/carlifevehicle/service/AccessService;

.field public final synthetic j:Landroid/view/accessibility/AccessibilityNodeInfo;


# direct methods
.method public constructor <init>(Lcom/muyetuge/carlifevehicle/service/AccessService;Landroid/view/accessibility/AccessibilityNodeInfo;Lw8/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li8/b;->i:Lcom/muyetuge/carlifevehicle/service/AccessService;

    .line 2
    .line 3
    iput-object p2, p0, Li8/b;->j:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Ly8/i;-><init>(ILw8/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lac/w;

    .line 2
    .line 3
    check-cast p2, Lw8/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Li8/b;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Li8/b;

    .line 10
    .line 11
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Li8/b;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final i(Ljava/lang/Object;Lw8/c;)Lw8/c;
    .locals 2

    .line 1
    new-instance p1, Li8/b;

    .line 2
    .line 3
    iget-object v0, p0, Li8/b;->i:Lcom/muyetuge/carlifevehicle/service/AccessService;

    .line 4
    .line 5
    iget-object v1, p0, Li8/b;->j:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Li8/b;-><init>(Lcom/muyetuge/carlifevehicle/service/AccessService;Landroid/view/accessibility/AccessibilityNodeInfo;Lw8/c;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    const-string v0, "\u3010\u65e0\u969c\u788d\u670d\u52a1\u3011\u70b9\u51fb\u7ed3\u679c="

    .line 2
    .line 3
    iget v1, p0, Li8/b;->h:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x3

    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x1

    .line 9
    const/4 v6, 0x0

    .line 10
    sget-object v7, Lx8/a;->a:Lx8/a;

    .line 11
    .line 12
    if-eqz v1, :cond_3

    .line 13
    .line 14
    if-eq v1, v5, :cond_2

    .line 15
    .line 16
    if-eq v1, v4, :cond_1

    .line 17
    .line 18
    if-ne v1, v3, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Li8/b;->f:Lcom/muyetuge/carlifevehicle/service/AccessService;

    .line 21
    .line 22
    iget-object v1, p0, Li8/b;->e:Ljc/a;

    .line 23
    .line 24
    :try_start_0
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    goto/16 :goto_3

    .line 28
    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto/16 :goto_4

    .line 31
    .line 32
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 33
    .line 34
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 35
    .line 36
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :cond_1
    iget-object v1, p0, Li8/b;->g:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 41
    .line 42
    iget-object v4, p0, Li8/b;->f:Lcom/muyetuge/carlifevehicle/service/AccessService;

    .line 43
    .line 44
    iget-object v8, p0, Li8/b;->e:Ljc/a;

    .line 45
    .line 46
    :try_start_1
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :catchall_1
    move-exception p1

    .line 51
    move-object v1, v8

    .line 52
    goto/16 :goto_4

    .line 53
    .line 54
    :cond_2
    iget-object v1, p0, Li8/b;->g:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 55
    .line 56
    iget-object v8, p0, Li8/b;->f:Lcom/muyetuge/carlifevehicle/service/AccessService;

    .line 57
    .line 58
    iget-object v9, p0, Li8/b;->e:Ljc/a;

    .line 59
    .line 60
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    move-object p1, v1

    .line 64
    move-object v1, v9

    .line 65
    goto :goto_0

    .line 66
    :cond_3
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iget-object v8, p0, Li8/b;->i:Lcom/muyetuge/carlifevehicle/service/AccessService;

    .line 70
    .line 71
    iget-object p1, v8, Lcom/muyetuge/carlifevehicle/service/AccessService;->c:Ljc/c;

    .line 72
    .line 73
    iput-object p1, p0, Li8/b;->e:Ljc/a;

    .line 74
    .line 75
    iput-object v8, p0, Li8/b;->f:Lcom/muyetuge/carlifevehicle/service/AccessService;

    .line 76
    .line 77
    iget-object v1, p0, Li8/b;->j:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 78
    .line 79
    iput-object v1, p0, Li8/b;->g:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 80
    .line 81
    iput v5, p0, Li8/b;->h:I

    .line 82
    .line 83
    invoke-virtual {p1, p0}, Ljc/c;->d(Ly8/c;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v9

    .line 87
    if-ne v9, v7, :cond_4

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_4
    move-object v13, v1

    .line 91
    move-object v1, p1

    .line 92
    move-object p1, v13

    .line 93
    :goto_0
    :try_start_2
    iget-boolean v9, v8, Lcom/muyetuge/carlifevehicle/service/AccessService;->d:Z

    .line 94
    .line 95
    if-nez v9, :cond_7

    .line 96
    .line 97
    iput-boolean v5, v8, Lcom/muyetuge/carlifevehicle/service/AccessService;->d:Z

    .line 98
    .line 99
    iput-object v1, p0, Li8/b;->e:Ljc/a;

    .line 100
    .line 101
    iput-object v8, p0, Li8/b;->f:Lcom/muyetuge/carlifevehicle/service/AccessService;

    .line 102
    .line 103
    iput-object p1, p0, Li8/b;->g:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 104
    .line 105
    iput v4, p0, Li8/b;->h:I

    .line 106
    .line 107
    const-wide/16 v9, 0x1f4

    .line 108
    .line 109
    invoke-static {v9, v10, p0}, Lac/z;->g(JLw8/c;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    if-ne v4, v7, :cond_5

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_5
    move-object v4, v8

    .line 117
    move-object v8, v1

    .line 118
    move-object v1, p1

    .line 119
    :goto_1
    const/16 p1, 0x10

    .line 120
    .line 121
    :try_start_3
    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    sget-object v9, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 126
    .line 127
    const-string v10, "CarLife_Vehicle"

    .line 128
    .line 129
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v11

    .line 133
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    new-instance v12, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string p1, ", id="

    .line 146
    .line 147
    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string p1, ", text="

    .line 154
    .line 155
    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    new-array v0, v5, [Ljava/lang/Object;

    .line 166
    .line 167
    aput-object p1, v0, v2

    .line 168
    .line 169
    invoke-virtual {v9, v10, v0}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    iput-object v8, p0, Li8/b;->e:Ljc/a;

    .line 173
    .line 174
    iput-object v4, p0, Li8/b;->f:Lcom/muyetuge/carlifevehicle/service/AccessService;

    .line 175
    .line 176
    iput-object v6, p0, Li8/b;->g:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 177
    .line 178
    iput v3, p0, Li8/b;->h:I

    .line 179
    .line 180
    const-wide/16 v0, 0x12c

    .line 181
    .line 182
    invoke-static {v0, v1, p0}, Lac/z;->g(JLw8/c;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 186
    if-ne p1, v7, :cond_6

    .line 187
    .line 188
    :goto_2
    return-object v7

    .line 189
    :cond_6
    move-object v0, v4

    .line 190
    move-object v1, v8

    .line 191
    :goto_3
    :try_start_4
    iput-boolean v2, v0, Lcom/muyetuge/carlifevehicle/service/AccessService;->d:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 192
    .line 193
    :cond_7
    check-cast v1, Ljc/c;

    .line 194
    .line 195
    invoke-virtual {v1, v6}, Ljc/c;->f(Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 199
    .line 200
    return-object p1

    .line 201
    :goto_4
    check-cast v1, Ljc/c;

    .line 202
    .line 203
    invoke-virtual {v1, v6}, Ljc/c;->f(Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    throw p1
.end method
