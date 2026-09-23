.class public final Ldc/i;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic e:I

.field public f:I

.field public synthetic g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public final synthetic j:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lf9/k;Ljava/util/concurrent/atomic/AtomicReference;Lf9/n;Lw8/c;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Ldc/i;->e:I

    .line 1
    check-cast p1, Lg9/n;

    iput-object p1, p0, Ldc/i;->h:Ljava/lang/Object;

    iput-object p2, p0, Ldc/i;->i:Ljava/lang/Object;

    iput-object p3, p0, Ldc/i;->j:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ly8/i;-><init>(ILw8/c;)V

    return-void
.end method

.method public constructor <init>(Lg9/x;Ldc/e;Lw8/c;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ldc/i;->e:I

    .line 2
    iput-object p1, p0, Ldc/i;->i:Ljava/lang/Object;

    iput-object p2, p0, Ldc/i;->j:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ly8/i;-><init>(ILw8/c;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V
    .locals 0

    .line 3
    iput p6, p0, Ldc/i;->e:I

    iput-object p1, p0, Ldc/i;->h:Ljava/lang/Object;

    iput-object p2, p0, Ldc/i;->i:Ljava/lang/Object;

    iput-object p3, p0, Ldc/i;->g:Ljava/lang/Object;

    iput-object p4, p0, Ldc/i;->j:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ly8/i;-><init>(ILw8/c;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lw8/c;IZ)V
    .locals 0

    .line 4
    iput p6, p0, Ldc/i;->e:I

    iput-object p1, p0, Ldc/i;->g:Ljava/lang/Object;

    iput-object p2, p0, Ldc/i;->h:Ljava/lang/Object;

    iput-object p3, p0, Ldc/i;->i:Ljava/lang/Object;

    iput-object p4, p0, Ldc/i;->j:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ly8/i;-><init>(ILw8/c;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V
    .locals 0

    .line 5
    iput p5, p0, Ldc/i;->e:I

    iput-object p1, p0, Ldc/i;->h:Ljava/lang/Object;

    iput-object p2, p0, Ldc/i;->i:Ljava/lang/Object;

    iput-object p3, p0, Ldc/i;->j:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ly8/i;-><init>(ILw8/c;)V

    return-void
.end method

.method public constructor <init>(Lw0/t;Lf9/n;Lw8/c;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Ldc/i;->e:I

    .line 6
    iput-object p1, p0, Ldc/i;->g:Ljava/lang/Object;

    check-cast p2, Ly8/i;

    iput-object p2, p0, Ldc/i;->j:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ly8/i;-><init>(ILw8/c;)V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Ldc/i;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lac/w;

    .line 7
    .line 8
    check-cast p2, Lw8/c;

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Ldc/i;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ldc/i;

    .line 15
    .line 16
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Ldc/i;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :pswitch_0
    check-cast p1, Lac/w;

    .line 24
    .line 25
    check-cast p2, Lw8/c;

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2}, Ldc/i;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Ldc/i;

    .line 32
    .line 33
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Ldc/i;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1

    .line 40
    :pswitch_1
    check-cast p1, Lac/w;

    .line 41
    .line 42
    check-cast p2, Lw8/c;

    .line 43
    .line 44
    invoke-virtual {p0, p1, p2}, Ldc/i;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Ldc/i;

    .line 49
    .line 50
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 51
    .line 52
    invoke-virtual {p1, p2}, Ldc/i;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    return-object p1

    .line 57
    :pswitch_2
    check-cast p1, Lac/w;

    .line 58
    .line 59
    check-cast p2, Lw8/c;

    .line 60
    .line 61
    invoke-virtual {p0, p1, p2}, Ldc/i;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Ldc/i;

    .line 66
    .line 67
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 68
    .line 69
    invoke-virtual {p1, p2}, Ldc/i;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    return-object p1

    .line 74
    :pswitch_3
    check-cast p1, Lac/w;

    .line 75
    .line 76
    check-cast p2, Lw8/c;

    .line 77
    .line 78
    invoke-virtual {p0, p1, p2}, Ldc/i;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Ldc/i;

    .line 83
    .line 84
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 85
    .line 86
    invoke-virtual {p1, p2}, Ldc/i;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    return-object p1

    .line 91
    :pswitch_4
    check-cast p1, Lr2/p0;

    .line 92
    .line 93
    check-cast p2, Lw8/c;

    .line 94
    .line 95
    invoke-virtual {p0, p1, p2}, Ldc/i;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, Ldc/i;

    .line 100
    .line 101
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 102
    .line 103
    invoke-virtual {p1, p2}, Ldc/i;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    sget-object p1, Lx8/a;->a:Lx8/a;

    .line 107
    .line 108
    return-object p1

    .line 109
    :pswitch_5
    check-cast p1, Lac/w;

    .line 110
    .line 111
    check-cast p2, Lw8/c;

    .line 112
    .line 113
    invoke-virtual {p0, p1, p2}, Ldc/i;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    check-cast p1, Ldc/i;

    .line 118
    .line 119
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 120
    .line 121
    invoke-virtual {p1, p2}, Ldc/i;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    return-object p1

    .line 126
    :pswitch_6
    check-cast p1, Lac/w;

    .line 127
    .line 128
    check-cast p2, Lw8/c;

    .line 129
    .line 130
    invoke-virtual {p0, p1, p2}, Ldc/i;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    check-cast p1, Ldc/i;

    .line 135
    .line 136
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 137
    .line 138
    invoke-virtual {p1, p2}, Ldc/i;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    return-object p1

    .line 143
    :pswitch_7
    check-cast p1, Ldc/d0;

    .line 144
    .line 145
    check-cast p2, Lw8/c;

    .line 146
    .line 147
    invoke-virtual {p0, p1, p2}, Ldc/i;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    check-cast p1, Ldc/i;

    .line 152
    .line 153
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 154
    .line 155
    invoke-virtual {p1, p2}, Ldc/i;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    return-object p1

    .line 160
    :pswitch_8
    check-cast p1, Lcc/o;

    .line 161
    .line 162
    iget-object p1, p1, Lcc/o;->a:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast p2, Lw8/c;

    .line 165
    .line 166
    new-instance v0, Lcc/o;

    .line 167
    .line 168
    invoke-direct {v0, p1}, Lcc/o;-><init>(Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, v0, p2}, Ldc/i;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    check-cast p1, Ldc/i;

    .line 176
    .line 177
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 178
    .line 179
    invoke-virtual {p1, p2}, Ldc/i;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    return-object p1

    .line 184
    nop

    .line 185
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Ljava/lang/Object;Lw8/c;)Lw8/c;
    .locals 10

    .line 1
    iget v0, p0, Ldc/i;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v1, Ldc/i;

    .line 7
    .line 8
    iget-object v0, p0, Ldc/i;->h:Ljava/lang/Object;

    .line 9
    .line 10
    move-object v2, v0

    .line 11
    check-cast v2, Lz/f;

    .line 12
    .line 13
    iget-object v0, p0, Ldc/i;->i:Ljava/lang/Object;

    .line 14
    .line 15
    move-object v3, v0

    .line 16
    check-cast v3, Lz/f2;

    .line 17
    .line 18
    iget-object v0, p0, Ldc/i;->j:Ljava/lang/Object;

    .line 19
    .line 20
    move-object v4, v0

    .line 21
    check-cast v4, Lz/c;

    .line 22
    .line 23
    const/16 v6, 0x9

    .line 24
    .line 25
    move-object v5, p2

    .line 26
    invoke-direct/range {v1 .. v6}, Ldc/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V

    .line 27
    .line 28
    .line 29
    iput-object p1, v1, Ldc/i;->g:Ljava/lang/Object;

    .line 30
    .line 31
    return-object v1

    .line 32
    :pswitch_0
    move-object v7, p2

    .line 33
    new-instance v2, Ldc/i;

    .line 34
    .line 35
    iget-object p1, p0, Ldc/i;->h:Ljava/lang/Object;

    .line 36
    .line 37
    move-object v3, p1

    .line 38
    check-cast v3, Lx2/c;

    .line 39
    .line 40
    iget-object p1, p0, Ldc/i;->i:Ljava/lang/Object;

    .line 41
    .line 42
    move-object v4, p1

    .line 43
    check-cast v4, Landroid/view/ScrollCaptureSession;

    .line 44
    .line 45
    iget-object p1, p0, Ldc/i;->g:Ljava/lang/Object;

    .line 46
    .line 47
    move-object v5, p1

    .line 48
    check-cast v5, Landroid/graphics/Rect;

    .line 49
    .line 50
    iget-object p1, p0, Ldc/i;->j:Ljava/lang/Object;

    .line 51
    .line 52
    move-object v6, p1

    .line 53
    check-cast v6, Ljava/util/function/Consumer;

    .line 54
    .line 55
    const/16 v8, 0x8

    .line 56
    .line 57
    invoke-direct/range {v2 .. v8}, Ldc/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V

    .line 58
    .line 59
    .line 60
    return-object v2

    .line 61
    :pswitch_1
    move-object v7, p2

    .line 62
    new-instance v2, Ldc/i;

    .line 63
    .line 64
    iget-object p1, p0, Ldc/i;->g:Ljava/lang/Object;

    .line 65
    .line 66
    move-object v3, p1

    .line 67
    check-cast v3, Lw0/w0;

    .line 68
    .line 69
    iget-object p1, p0, Ldc/i;->h:Ljava/lang/Object;

    .line 70
    .line 71
    move-object v4, p1

    .line 72
    check-cast v4, Lg9/x;

    .line 73
    .line 74
    iget-object p1, p0, Ldc/i;->i:Ljava/lang/Object;

    .line 75
    .line 76
    move-object v5, p1

    .line 77
    check-cast v5, Lg9/x;

    .line 78
    .line 79
    iget-object p1, p0, Ldc/i;->j:Ljava/lang/Object;

    .line 80
    .line 81
    move-object v6, p1

    .line 82
    check-cast v6, Lg9/w;

    .line 83
    .line 84
    const/4 v8, 0x7

    .line 85
    const/4 v9, 0x0

    .line 86
    invoke-direct/range {v2 .. v9}, Ldc/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lw8/c;IZ)V

    .line 87
    .line 88
    .line 89
    return-object v2

    .line 90
    :pswitch_2
    move-object v7, p2

    .line 91
    new-instance p1, Ldc/i;

    .line 92
    .line 93
    iget-object p2, p0, Ldc/i;->g:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast p2, Lw0/t;

    .line 96
    .line 97
    iget-object v0, p0, Ldc/i;->j:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v0, Ly8/i;

    .line 100
    .line 101
    invoke-direct {p1, p2, v0, v7}, Ldc/i;-><init>(Lw0/t;Lf9/n;Lw8/c;)V

    .line 102
    .line 103
    .line 104
    return-object p1

    .line 105
    :pswitch_3
    move-object v7, p2

    .line 106
    new-instance v2, Ldc/i;

    .line 107
    .line 108
    iget-object v3, p0, Ldc/i;->g:Ljava/lang/Object;

    .line 109
    .line 110
    iget-object p1, p0, Ldc/i;->h:Ljava/lang/Object;

    .line 111
    .line 112
    move-object v4, p1

    .line 113
    check-cast v4, Lv/c;

    .line 114
    .line 115
    iget-object p1, p0, Ldc/i;->i:Ljava/lang/Object;

    .line 116
    .line 117
    move-object v5, p1

    .line 118
    check-cast v5, Lf1/b1;

    .line 119
    .line 120
    iget-object p1, p0, Ldc/i;->j:Ljava/lang/Object;

    .line 121
    .line 122
    move-object v6, p1

    .line 123
    check-cast v6, Lf1/b1;

    .line 124
    .line 125
    const/4 v8, 0x5

    .line 126
    const/4 v9, 0x0

    .line 127
    invoke-direct/range {v2 .. v9}, Ldc/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lw8/c;IZ)V

    .line 128
    .line 129
    .line 130
    return-object v2

    .line 131
    :pswitch_4
    move-object v7, p2

    .line 132
    new-instance v2, Ldc/i;

    .line 133
    .line 134
    iget-object p2, p0, Ldc/i;->h:Ljava/lang/Object;

    .line 135
    .line 136
    move-object v3, p2

    .line 137
    check-cast v3, Lf9/k;

    .line 138
    .line 139
    iget-object p2, p0, Ldc/i;->i:Ljava/lang/Object;

    .line 140
    .line 141
    move-object v4, p2

    .line 142
    check-cast v4, Lu0/b;

    .line 143
    .line 144
    iget-object p2, p0, Ldc/i;->j:Ljava/lang/Object;

    .line 145
    .line 146
    move-object v5, p2

    .line 147
    check-cast v5, Lu0/k;

    .line 148
    .line 149
    move-object v6, v7

    .line 150
    const/4 v7, 0x4

    .line 151
    invoke-direct/range {v2 .. v7}, Ldc/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V

    .line 152
    .line 153
    .line 154
    iput-object p1, v2, Ldc/i;->g:Ljava/lang/Object;

    .line 155
    .line 156
    return-object v2

    .line 157
    :pswitch_5
    move-object v7, p2

    .line 158
    new-instance p2, Ldc/i;

    .line 159
    .line 160
    iget-object v0, p0, Ldc/i;->h:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast v0, Lg9/n;

    .line 163
    .line 164
    iget-object v1, p0, Ldc/i;->i:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 167
    .line 168
    iget-object v2, p0, Ldc/i;->j:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v2, Lf9/n;

    .line 171
    .line 172
    invoke-direct {p2, v0, v1, v2, v7}, Ldc/i;-><init>(Lf9/k;Ljava/util/concurrent/atomic/AtomicReference;Lf9/n;Lw8/c;)V

    .line 173
    .line 174
    .line 175
    iput-object p1, p2, Ldc/i;->g:Ljava/lang/Object;

    .line 176
    .line 177
    return-object p2

    .line 178
    :pswitch_6
    move-object v7, p2

    .line 179
    new-instance v2, Ldc/i;

    .line 180
    .line 181
    iget-object p1, p0, Ldc/i;->h:Ljava/lang/Object;

    .line 182
    .line 183
    move-object v3, p1

    .line 184
    check-cast v3, Ldc/i0;

    .line 185
    .line 186
    iget-object p1, p0, Ldc/i;->i:Ljava/lang/Object;

    .line 187
    .line 188
    move-object v4, p1

    .line 189
    check-cast v4, Ldc/d;

    .line 190
    .line 191
    iget-object p1, p0, Ldc/i;->g:Ljava/lang/Object;

    .line 192
    .line 193
    move-object v5, p1

    .line 194
    check-cast v5, Ldc/l0;

    .line 195
    .line 196
    iget-object p1, p0, Ldc/i;->j:Ljava/lang/Object;

    .line 197
    .line 198
    move-object v6, p1

    .line 199
    check-cast v6, Ljava/lang/Float;

    .line 200
    .line 201
    const/4 v8, 0x2

    .line 202
    invoke-direct/range {v2 .. v8}, Ldc/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V

    .line 203
    .line 204
    .line 205
    return-object v2

    .line 206
    :pswitch_7
    move-object v7, p2

    .line 207
    new-instance v2, Ldc/i;

    .line 208
    .line 209
    iget-object p2, p0, Ldc/i;->h:Ljava/lang/Object;

    .line 210
    .line 211
    move-object v3, p2

    .line 212
    check-cast v3, Ldc/d;

    .line 213
    .line 214
    iget-object p2, p0, Ldc/i;->i:Ljava/lang/Object;

    .line 215
    .line 216
    move-object v4, p2

    .line 217
    check-cast v4, Ldc/l0;

    .line 218
    .line 219
    iget-object p2, p0, Ldc/i;->j:Ljava/lang/Object;

    .line 220
    .line 221
    move-object v5, p2

    .line 222
    check-cast v5, Ljava/lang/Float;

    .line 223
    .line 224
    move-object v6, v7

    .line 225
    const/4 v7, 0x1

    .line 226
    invoke-direct/range {v2 .. v7}, Ldc/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V

    .line 227
    .line 228
    .line 229
    iput-object p1, v2, Ldc/i;->g:Ljava/lang/Object;

    .line 230
    .line 231
    return-object v2

    .line 232
    :pswitch_8
    move-object v7, p2

    .line 233
    new-instance p2, Ldc/i;

    .line 234
    .line 235
    iget-object v0, p0, Ldc/i;->i:Ljava/lang/Object;

    .line 236
    .line 237
    check-cast v0, Lg9/x;

    .line 238
    .line 239
    iget-object v1, p0, Ldc/i;->j:Ljava/lang/Object;

    .line 240
    .line 241
    check-cast v1, Ldc/e;

    .line 242
    .line 243
    invoke-direct {p2, v0, v1, v7}, Ldc/i;-><init>(Lg9/x;Ldc/e;Lw8/c;)V

    .line 244
    .line 245
    .line 246
    iput-object p1, p2, Ldc/i;->g:Ljava/lang/Object;

    .line 247
    .line 248
    return-object p2

    .line 249
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v4, p0

    .line 2
    .line 3
    iget v0, v4, Ldc/i;->e:I

    .line 4
    .line 5
    const/4 v1, 0x5

    .line 6
    const/4 v2, 0x3

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v5, 0x2

    .line 9
    const/4 v6, 0x0

    .line 10
    sget-object v7, Lr8/z;->a:Lr8/z;

    .line 11
    .line 12
    iget-object v8, v4, Ldc/i;->j:Ljava/lang/Object;

    .line 13
    .line 14
    const-string v9, "call to \'resume\' before \'invoke\' with coroutine"

    .line 15
    .line 16
    sget-object v10, Lx8/a;->a:Lx8/a;

    .line 17
    .line 18
    const/4 v11, 0x1

    .line 19
    packed-switch v0, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    iget-object v0, v4, Ldc/i;->h:Ljava/lang/Object;

    .line 23
    .line 24
    move-object v14, v0

    .line 25
    check-cast v14, Lz/f;

    .line 26
    .line 27
    iget-object v1, v14, Lz/f;->r:Lh0/k;

    .line 28
    .line 29
    iget v0, v4, Ldc/i;->f:I

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    if-ne v0, v11, :cond_0

    .line 34
    .line 35
    :try_start_0
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    goto :goto_3

    .line 41
    :catch_0
    move-exception v0

    .line 42
    move-object v6, v0

    .line 43
    goto :goto_2

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v0

    .line 50
    :cond_1
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, v4, Ldc/i;->g:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v0, Lac/w;

    .line 56
    .line 57
    invoke-interface {v0}, Lac/w;->q()Lw8/h;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0}, Lac/z;->l(Lw8/h;)Lac/v0;

    .line 62
    .line 63
    .line 64
    move-result-object v16

    .line 65
    :try_start_1
    iput-boolean v11, v14, Lz/f;->w:Z

    .line 66
    .line 67
    iget-object v0, v14, Lz/f;->p:Lz/s1;

    .line 68
    .line 69
    sget-object v2, Lx/v0;->a:Lx/v0;

    .line 70
    .line 71
    new-instance v12, Lf1/y1;

    .line 72
    .line 73
    iget-object v5, v4, Ldc/i;->i:Ljava/lang/Object;

    .line 74
    .line 75
    move-object v13, v5

    .line 76
    check-cast v13, Lz/f2;

    .line 77
    .line 78
    move-object v15, v8

    .line 79
    check-cast v15, Lz/c;

    .line 80
    .line 81
    const/16 v17, 0x0

    .line 82
    .line 83
    const/16 v18, 0x4

    .line 84
    .line 85
    invoke-direct/range {v12 .. v18}, Lf1/y1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V

    .line 86
    .line 87
    .line 88
    iput v11, v4, Ldc/i;->f:I

    .line 89
    .line 90
    invoke-virtual {v0, v2, v12, v4}, Lz/s1;->f(Lx/v0;Lf9/n;Ly8/c;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    if-ne v0, v10, :cond_2

    .line 95
    .line 96
    move-object v7, v10

    .line 97
    goto :goto_1

    .line 98
    :cond_2
    :goto_0
    invoke-virtual {v1}, Lh0/k;->b()V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    .line 100
    .line 101
    iput-boolean v3, v14, Lz/f;->w:Z

    .line 102
    .line 103
    invoke-virtual {v1, v6}, Lh0/k;->a(Ljava/util/concurrent/CancellationException;)V

    .line 104
    .line 105
    .line 106
    iput-boolean v3, v14, Lz/f;->t:Z

    .line 107
    .line 108
    :goto_1
    return-object v7

    .line 109
    :goto_2
    :try_start_2
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    :goto_3
    iput-boolean v3, v14, Lz/f;->w:Z

    .line 111
    .line 112
    invoke-virtual {v1, v6}, Lh0/k;->a(Ljava/util/concurrent/CancellationException;)V

    .line 113
    .line 114
    .line 115
    iput-boolean v3, v14, Lz/f;->t:Z

    .line 116
    .line 117
    throw v0

    .line 118
    :pswitch_0
    iget v0, v4, Ldc/i;->f:I

    .line 119
    .line 120
    if-eqz v0, :cond_4

    .line 121
    .line 122
    if-ne v0, v11, :cond_3

    .line 123
    .line 124
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    move-object/from16 v0, p1

    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 131
    .line 132
    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw v0

    .line 136
    :cond_4
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    iget-object v0, v4, Ldc/i;->h:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v0, Lx2/c;

    .line 142
    .line 143
    iget-object v1, v4, Ldc/i;->i:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast v1, Landroid/view/ScrollCaptureSession;

    .line 146
    .line 147
    iget-object v2, v4, Ldc/i;->g:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v2, Landroid/graphics/Rect;

    .line 150
    .line 151
    new-instance v3, Ln3/k;

    .line 152
    .line 153
    iget v5, v2, Landroid/graphics/Rect;->left:I

    .line 154
    .line 155
    iget v6, v2, Landroid/graphics/Rect;->top:I

    .line 156
    .line 157
    iget v9, v2, Landroid/graphics/Rect;->right:I

    .line 158
    .line 159
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 160
    .line 161
    invoke-direct {v3, v5, v6, v9, v2}, Ln3/k;-><init>(IIII)V

    .line 162
    .line 163
    .line 164
    iput v11, v4, Ldc/i;->f:I

    .line 165
    .line 166
    invoke-static {v0, v1, v3, v4}, Lx2/c;->a(Lx2/c;Landroid/view/ScrollCaptureSession;Ln3/k;Ly8/c;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    if-ne v0, v10, :cond_5

    .line 171
    .line 172
    move-object v7, v10

    .line 173
    goto :goto_5

    .line 174
    :cond_5
    :goto_4
    check-cast v0, Ln3/k;

    .line 175
    .line 176
    check-cast v8, Ljava/util/function/Consumer;

    .line 177
    .line 178
    invoke-static {v0}, Ly1/h0;->y(Ln3/k;)Landroid/graphics/Rect;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-static {v8, v0}, Lr2/g0;->h(Ljava/util/function/Consumer;Landroid/graphics/Rect;)V

    .line 183
    .line 184
    .line 185
    :goto_5
    return-object v7

    .line 186
    :pswitch_1
    iget-object v0, v4, Ldc/i;->i:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast v0, Lg9/x;

    .line 189
    .line 190
    iget-object v1, v4, Ldc/i;->h:Ljava/lang/Object;

    .line 191
    .line 192
    check-cast v1, Lg9/x;

    .line 193
    .line 194
    check-cast v8, Lg9/w;

    .line 195
    .line 196
    iget-object v2, v4, Ldc/i;->g:Ljava/lang/Object;

    .line 197
    .line 198
    check-cast v2, Lw0/w0;

    .line 199
    .line 200
    iget-object v5, v2, Lw0/w0;->a:Lw0/c1;

    .line 201
    .line 202
    iget v12, v4, Ldc/i;->f:I

    .line 203
    .line 204
    if-eqz v12, :cond_7

    .line 205
    .line 206
    if-ne v12, v11, :cond_6

    .line 207
    .line 208
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    move-object/from16 v9, p1

    .line 212
    .line 213
    goto :goto_8

    .line 214
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 215
    .line 216
    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    throw v0

    .line 220
    :cond_7
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    iget-object v15, v2, Lw0/w0;->w:Lw0/t;

    .line 224
    .line 225
    if-eqz v15, :cond_b

    .line 226
    .line 227
    iget-object v9, v1, Lg9/x;->b:Ljava/lang/Object;

    .line 228
    .line 229
    move-object v14, v9

    .line 230
    check-cast v14, Ljava/lang/CharSequence;

    .line 231
    .line 232
    iget-object v9, v0, Lg9/x;->b:Ljava/lang/Object;

    .line 233
    .line 234
    check-cast v9, Lb3/n0;

    .line 235
    .line 236
    iget-wide v12, v9, Lb3/n0;->a:J

    .line 237
    .line 238
    iput v11, v4, Ldc/i;->f:I

    .line 239
    .line 240
    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    .line 241
    .line 242
    .line 243
    move-result v9

    .line 244
    if-nez v9, :cond_8

    .line 245
    .line 246
    goto :goto_6

    .line 247
    :cond_8
    invoke-static {v12, v13}, Lb3/n0;->c(J)Z

    .line 248
    .line 249
    .line 250
    move-result v9

    .line 251
    if-eqz v9, :cond_9

    .line 252
    .line 253
    :goto_6
    move-object v9, v6

    .line 254
    goto :goto_7

    .line 255
    :cond_9
    new-instance v11, Lw0/s;

    .line 256
    .line 257
    const/16 v16, 0x0

    .line 258
    .line 259
    invoke-direct/range {v11 .. v16}, Lw0/s;-><init>(JLjava/lang/CharSequence;Lw0/t;Lw8/c;)V

    .line 260
    .line 261
    .line 262
    iget-object v9, v15, Lw0/t;->a:Lw8/h;

    .line 263
    .line 264
    new-instance v12, Ldc/i;

    .line 265
    .line 266
    invoke-direct {v12, v15, v11, v6}, Ldc/i;-><init>(Lw0/t;Lf9/n;Lw8/c;)V

    .line 267
    .line 268
    .line 269
    invoke-static {v9, v12, v4}, Lac/z;->y(Lw8/h;Lf9/n;Ly8/c;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v9

    .line 273
    :goto_7
    if-ne v9, v10, :cond_a

    .line 274
    .line 275
    move-object v7, v10

    .line 276
    goto :goto_a

    .line 277
    :cond_a
    :goto_8
    check-cast v9, Lb3/n0;

    .line 278
    .line 279
    goto :goto_9

    .line 280
    :cond_b
    move-object v9, v6

    .line 281
    :goto_9
    if-eqz v9, :cond_d

    .line 282
    .line 283
    iget-wide v9, v9, Lb3/n0;->a:J

    .line 284
    .line 285
    iget-object v0, v0, Lg9/x;->b:Ljava/lang/Object;

    .line 286
    .line 287
    invoke-static {v9, v10, v0}, Lb3/n0;->a(JLjava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v0

    .line 291
    if-nez v0, :cond_d

    .line 292
    .line 293
    iget-object v0, v5, Lw0/c1;->c:Ls/a0;

    .line 294
    .line 295
    iget-wide v11, v8, Lg9/w;->a:J

    .line 296
    .line 297
    invoke-virtual {v0, v11, v12}, Ls/a0;->e(J)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    check-cast v0, Lw0/p;

    .line 302
    .line 303
    if-eqz v0, :cond_d

    .line 304
    .line 305
    invoke-virtual {v0}, Lw0/p;->d()Lb3/g;

    .line 306
    .line 307
    .line 308
    move-result-object v11

    .line 309
    iget-object v1, v1, Lg9/x;->b:Ljava/lang/Object;

    .line 310
    .line 311
    if-ne v11, v1, :cond_d

    .line 312
    .line 313
    iget-object v0, v0, Lw0/p;->c:Lv0/g;

    .line 314
    .line 315
    invoke-virtual {v0}, Lv0/g;->invoke()Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    check-cast v0, Lb3/l0;

    .line 320
    .line 321
    if-nez v0, :cond_c

    .line 322
    .line 323
    goto :goto_a

    .line 324
    :cond_c
    new-instance v1, Lw0/z;

    .line 325
    .line 326
    new-instance v11, Lw0/y;

    .line 327
    .line 328
    const/16 v12, 0x20

    .line 329
    .line 330
    shr-long v12, v9, v12

    .line 331
    .line 332
    long-to-int v13, v12

    .line 333
    invoke-static {v0, v13}, Lw0/y0;->u(Lb3/l0;I)Lm3/j;

    .line 334
    .line 335
    .line 336
    move-result-object v12

    .line 337
    iget-wide v14, v8, Lg9/w;->a:J

    .line 338
    .line 339
    invoke-direct {v11, v12, v13, v14, v15}, Lw0/y;-><init>(Lm3/j;IJ)V

    .line 340
    .line 341
    .line 342
    new-instance v12, Lw0/y;

    .line 343
    .line 344
    const-wide v13, 0xffffffffL

    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    and-long/2addr v9, v13

    .line 350
    long-to-int v10, v9

    .line 351
    invoke-static {v0, v10}, Lw0/y0;->u(Lb3/l0;I)Lm3/j;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    iget-wide v8, v8, Lg9/w;->a:J

    .line 356
    .line 357
    invoke-direct {v12, v0, v10, v8, v9}, Lw0/y;-><init>(Lm3/j;IJ)V

    .line 358
    .line 359
    .line 360
    invoke-direct {v1, v11, v12, v3}, Lw0/z;-><init>(Lw0/y;Lw0/y;Z)V

    .line 361
    .line 362
    .line 363
    sget-object v0, Ls/o;->a:Ls/a0;

    .line 364
    .line 365
    new-instance v0, Ls/a0;

    .line 366
    .line 367
    invoke-direct {v0}, Ls/a0;-><init>()V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v0, v8, v9, v1}, Ls/a0;->h(JLjava/lang/Object;)V

    .line 371
    .line 372
    .line 373
    iget-object v3, v5, Lw0/c1;->k:Lf1/k1;

    .line 374
    .line 375
    invoke-virtual {v3, v0}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 376
    .line 377
    .line 378
    iget-object v0, v2, Lw0/w0;->d:Lf9/k;

    .line 379
    .line 380
    invoke-interface {v0, v1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    iput-object v6, v2, Lw0/w0;->t:Lw0/p0;

    .line 384
    .line 385
    :cond_d
    :goto_a
    return-object v7

    .line 386
    :pswitch_2
    iget v0, v4, Ldc/i;->f:I

    .line 387
    .line 388
    if-eqz v0, :cond_11

    .line 389
    .line 390
    if-eq v0, v11, :cond_10

    .line 391
    .line 392
    if-eq v0, v5, :cond_f

    .line 393
    .line 394
    if-ne v0, v2, :cond_e

    .line 395
    .line 396
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 397
    .line 398
    .line 399
    move-object/from16 v0, p1

    .line 400
    .line 401
    goto/16 :goto_f

    .line 402
    .line 403
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 404
    .line 405
    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    throw v0

    .line 409
    :cond_f
    iget-object v0, v4, Ldc/i;->h:Ljava/lang/Object;

    .line 410
    .line 411
    move-object v1, v0

    .line 412
    check-cast v1, Ljc/a;

    .line 413
    .line 414
    :try_start_3
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 415
    .line 416
    .line 417
    move-object/from16 v0, p1

    .line 418
    .line 419
    goto :goto_d

    .line 420
    :catchall_1
    move-exception v0

    .line 421
    goto/16 :goto_10

    .line 422
    .line 423
    :cond_10
    iget-object v0, v4, Ldc/i;->i:Ljava/lang/Object;

    .line 424
    .line 425
    check-cast v0, Lw0/t;

    .line 426
    .line 427
    iget-object v3, v4, Ldc/i;->h:Ljava/lang/Object;

    .line 428
    .line 429
    check-cast v3, Ljc/a;

    .line 430
    .line 431
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 432
    .line 433
    .line 434
    goto :goto_b

    .line 435
    :cond_11
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 436
    .line 437
    .line 438
    iget-object v0, v4, Ldc/i;->g:Ljava/lang/Object;

    .line 439
    .line 440
    check-cast v0, Lw0/t;

    .line 441
    .line 442
    iget-object v3, v0, Lw0/t;->e:Ljc/c;

    .line 443
    .line 444
    iput-object v3, v4, Ldc/i;->h:Ljava/lang/Object;

    .line 445
    .line 446
    iput-object v0, v4, Ldc/i;->i:Ljava/lang/Object;

    .line 447
    .line 448
    iput v11, v4, Ldc/i;->f:I

    .line 449
    .line 450
    invoke-virtual {v3, v4}, Ljc/c;->d(Ly8/c;)Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    move-result-object v7

    .line 454
    if-ne v7, v10, :cond_12

    .line 455
    .line 456
    goto :goto_e

    .line 457
    :cond_12
    :goto_b
    :try_start_4
    iget-object v7, v0, Lw0/t;->f:Landroid/view/textclassifier/TextClassifier;

    .line 458
    .line 459
    if-eqz v7, :cond_13

    .line 460
    .line 461
    invoke-static {v7}, Ll8/e;->v(Landroid/view/textclassifier/TextClassifier;)Z

    .line 462
    .line 463
    .line 464
    move-result v9

    .line 465
    if-eqz v9, :cond_15

    .line 466
    .line 467
    goto :goto_c

    .line 468
    :catchall_2
    move-exception v0

    .line 469
    move-object v1, v3

    .line 470
    goto :goto_10

    .line 471
    :cond_13
    :goto_c
    new-instance v7, La8/k0;

    .line 472
    .line 473
    invoke-direct {v7, v0, v6, v1}, La8/k0;-><init>(Ljava/lang/Object;Lw8/c;I)V

    .line 474
    .line 475
    .line 476
    iput-object v3, v4, Ldc/i;->h:Ljava/lang/Object;

    .line 477
    .line 478
    iput-object v6, v4, Ldc/i;->i:Ljava/lang/Object;

    .line 479
    .line 480
    iput v5, v4, Ldc/i;->f:I

    .line 481
    .line 482
    const-wide/16 v0, 0x12c

    .line 483
    .line 484
    invoke-static {v0, v1, v7, v4}, Lac/z;->z(JLf9/n;Ly8/c;)Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 488
    if-ne v0, v10, :cond_14

    .line 489
    .line 490
    goto :goto_e

    .line 491
    :cond_14
    move-object v1, v3

    .line 492
    :goto_d
    :try_start_5
    invoke-static {v0}, Ls1/o;->j(Ljava/lang/Object;)Landroid/view/textclassifier/TextClassifier;

    .line 493
    .line 494
    .line 495
    move-result-object v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 496
    move-object v3, v1

    .line 497
    :cond_15
    check-cast v3, Ljc/c;

    .line 498
    .line 499
    invoke-virtual {v3, v6}, Ljc/c;->f(Ljava/lang/Object;)V

    .line 500
    .line 501
    .line 502
    new-instance v0, Lb0/g;

    .line 503
    .line 504
    check-cast v8, Ly8/i;

    .line 505
    .line 506
    invoke-direct {v0, v7, v8, v6}, Lb0/g;-><init>(Landroid/view/textclassifier/TextClassifier;Lf9/n;Lw8/c;)V

    .line 507
    .line 508
    .line 509
    iput-object v6, v4, Ldc/i;->h:Ljava/lang/Object;

    .line 510
    .line 511
    iput-object v6, v4, Ldc/i;->i:Ljava/lang/Object;

    .line 512
    .line 513
    iput v2, v4, Ldc/i;->f:I

    .line 514
    .line 515
    const-wide/16 v1, 0xc8

    .line 516
    .line 517
    invoke-static {v1, v2, v0, v4}, Lac/z;->z(JLf9/n;Ly8/c;)Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    move-result-object v0

    .line 521
    if-ne v0, v10, :cond_16

    .line 522
    .line 523
    :goto_e
    move-object v0, v10

    .line 524
    :cond_16
    :goto_f
    return-object v0

    .line 525
    :goto_10
    check-cast v1, Ljc/c;

    .line 526
    .line 527
    invoke-virtual {v1, v6}, Ljc/c;->f(Ljava/lang/Object;)V

    .line 528
    .line 529
    .line 530
    throw v0

    .line 531
    :pswitch_3
    iget-object v0, v4, Ldc/i;->h:Ljava/lang/Object;

    .line 532
    .line 533
    move-object v6, v0

    .line 534
    check-cast v6, Lv/c;

    .line 535
    .line 536
    iget v0, v4, Ldc/i;->f:I

    .line 537
    .line 538
    if-eqz v0, :cond_18

    .line 539
    .line 540
    if-ne v0, v11, :cond_17

    .line 541
    .line 542
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 543
    .line 544
    .line 545
    goto :goto_11

    .line 546
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 547
    .line 548
    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    throw v0

    .line 552
    :cond_18
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 553
    .line 554
    .line 555
    iget-object v0, v4, Ldc/i;->g:Ljava/lang/Object;

    .line 556
    .line 557
    iget-object v1, v6, Lv/c;->e:Lf1/k1;

    .line 558
    .line 559
    invoke-virtual {v1}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 560
    .line 561
    .line 562
    move-result-object v1

    .line 563
    invoke-static {v0, v1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 564
    .line 565
    .line 566
    move-result v0

    .line 567
    if-nez v0, :cond_1a

    .line 568
    .line 569
    iget-object v0, v4, Ldc/i;->h:Ljava/lang/Object;

    .line 570
    .line 571
    check-cast v0, Lv/c;

    .line 572
    .line 573
    iget-object v1, v4, Ldc/i;->g:Ljava/lang/Object;

    .line 574
    .line 575
    iget-object v2, v4, Ldc/i;->i:Ljava/lang/Object;

    .line 576
    .line 577
    check-cast v2, Lf1/b1;

    .line 578
    .line 579
    sget v3, Lv/e;->a:I

    .line 580
    .line 581
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 582
    .line 583
    .line 584
    move-result-object v2

    .line 585
    check-cast v2, Lv/j;

    .line 586
    .line 587
    iput v11, v4, Ldc/i;->f:I

    .line 588
    .line 589
    const/4 v3, 0x0

    .line 590
    const/16 v5, 0xc

    .line 591
    .line 592
    invoke-static/range {v0 .. v5}, Lv/c;->c(Lv/c;Ljava/lang/Object;Lv/j;Lf9/k;Ly8/i;I)Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object v0

    .line 596
    if-ne v0, v10, :cond_19

    .line 597
    .line 598
    move-object v7, v10

    .line 599
    goto :goto_12

    .line 600
    :cond_19
    :goto_11
    check-cast v8, Lf1/b1;

    .line 601
    .line 602
    sget v0, Lv/e;->a:I

    .line 603
    .line 604
    invoke-interface {v8}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 605
    .line 606
    .line 607
    move-result-object v0

    .line 608
    check-cast v0, Lf9/k;

    .line 609
    .line 610
    if-eqz v0, :cond_1a

    .line 611
    .line 612
    invoke-virtual {v6}, Lv/c;->d()Ljava/lang/Object;

    .line 613
    .line 614
    .line 615
    move-result-object v1

    .line 616
    invoke-interface {v0, v1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    .line 618
    .line 619
    :cond_1a
    :goto_12
    return-object v7

    .line 620
    :pswitch_4
    iget v0, v4, Ldc/i;->f:I

    .line 621
    .line 622
    if-eqz v0, :cond_1c

    .line 623
    .line 624
    if-eq v0, v11, :cond_1b

    .line 625
    .line 626
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 627
    .line 628
    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 629
    .line 630
    .line 631
    throw v0

    .line 632
    :cond_1b
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 633
    .line 634
    .line 635
    goto :goto_13

    .line 636
    :cond_1c
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 637
    .line 638
    .line 639
    iget-object v0, v4, Ldc/i;->g:Ljava/lang/Object;

    .line 640
    .line 641
    move-object v13, v0

    .line 642
    check-cast v13, Lr2/p0;

    .line 643
    .line 644
    new-instance v12, Lf1/y1;

    .line 645
    .line 646
    iget-object v0, v4, Ldc/i;->h:Ljava/lang/Object;

    .line 647
    .line 648
    move-object v14, v0

    .line 649
    check-cast v14, Lf9/k;

    .line 650
    .line 651
    iget-object v0, v4, Ldc/i;->i:Ljava/lang/Object;

    .line 652
    .line 653
    move-object v15, v0

    .line 654
    check-cast v15, Lu0/b;

    .line 655
    .line 656
    move-object/from16 v16, v8

    .line 657
    .line 658
    check-cast v16, Lu0/k;

    .line 659
    .line 660
    const/16 v17, 0x0

    .line 661
    .line 662
    const/16 v18, 0x3

    .line 663
    .line 664
    invoke-direct/range {v12 .. v18}, Lf1/y1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V

    .line 665
    .line 666
    .line 667
    iput v11, v4, Ldc/i;->f:I

    .line 668
    .line 669
    invoke-static {v12, v4}, Lac/z;->f(Lf9/n;Lw8/c;)Ljava/lang/Object;

    .line 670
    .line 671
    .line 672
    move-result-object v0

    .line 673
    if-ne v0, v10, :cond_1d

    .line 674
    .line 675
    return-object v10

    .line 676
    :cond_1d
    :goto_13
    new-instance v0, Lac/p;

    .line 677
    .line 678
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 679
    .line 680
    .line 681
    throw v0

    .line 682
    :pswitch_5
    iget-object v0, v4, Ldc/i;->i:Ljava/lang/Object;

    .line 683
    .line 684
    move-object v1, v0

    .line 685
    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 686
    .line 687
    iget v0, v4, Ldc/i;->f:I

    .line 688
    .line 689
    if-eqz v0, :cond_21

    .line 690
    .line 691
    if-eq v0, v11, :cond_20

    .line 692
    .line 693
    if-ne v0, v5, :cond_1f

    .line 694
    .line 695
    iget-object v0, v4, Ldc/i;->g:Ljava/lang/Object;

    .line 696
    .line 697
    move-object v2, v0

    .line 698
    check-cast v2, Lr1/r;

    .line 699
    .line 700
    :try_start_6
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 701
    .line 702
    .line 703
    move-object/from16 v0, p1

    .line 704
    .line 705
    :cond_1e
    move-object v3, v2

    .line 706
    goto :goto_15

    .line 707
    :catchall_3
    move-exception v0

    .line 708
    goto :goto_18

    .line 709
    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 710
    .line 711
    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 712
    .line 713
    .line 714
    throw v0

    .line 715
    :cond_20
    iget-object v0, v4, Ldc/i;->g:Ljava/lang/Object;

    .line 716
    .line 717
    check-cast v0, Lr1/r;

    .line 718
    .line 719
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 720
    .line 721
    .line 722
    goto :goto_14

    .line 723
    :cond_21
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 724
    .line 725
    .line 726
    iget-object v0, v4, Ldc/i;->g:Ljava/lang/Object;

    .line 727
    .line 728
    check-cast v0, Lac/w;

    .line 729
    .line 730
    new-instance v2, Lr1/r;

    .line 731
    .line 732
    invoke-interface {v0}, Lac/w;->q()Lw8/h;

    .line 733
    .line 734
    .line 735
    move-result-object v3

    .line 736
    invoke-static {v3}, Lac/z;->l(Lw8/h;)Lac/v0;

    .line 737
    .line 738
    .line 739
    move-result-object v3

    .line 740
    iget-object v7, v4, Ldc/i;->h:Ljava/lang/Object;

    .line 741
    .line 742
    check-cast v7, Lg9/n;

    .line 743
    .line 744
    invoke-interface {v7, v0}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    .line 746
    .line 747
    move-result-object v0

    .line 748
    invoke-direct {v2, v3, v0}, Lr1/r;-><init>(Lac/v0;Ljava/lang/Object;)V

    .line 749
    .line 750
    .line 751
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    .line 753
    .line 754
    move-result-object v0

    .line 755
    check-cast v0, Lr1/r;

    .line 756
    .line 757
    if-eqz v0, :cond_23

    .line 758
    .line 759
    iget-object v0, v0, Lr1/r;->a:Lac/v0;

    .line 760
    .line 761
    iput-object v2, v4, Ldc/i;->g:Ljava/lang/Object;

    .line 762
    .line 763
    iput v11, v4, Ldc/i;->f:I

    .line 764
    .line 765
    invoke-static {v0, v4}, Lac/z;->e(Lac/v0;Ly8/c;)Ljava/lang/Object;

    .line 766
    .line 767
    .line 768
    move-result-object v0

    .line 769
    if-ne v0, v10, :cond_22

    .line 770
    .line 771
    goto :goto_17

    .line 772
    :cond_22
    move-object v0, v2

    .line 773
    :goto_14
    move-object v2, v0

    .line 774
    :cond_23
    :try_start_7
    check-cast v8, Lf9/n;

    .line 775
    .line 776
    iget-object v0, v2, Lr1/r;->b:Ljava/lang/Object;

    .line 777
    .line 778
    iput-object v2, v4, Ldc/i;->g:Ljava/lang/Object;

    .line 779
    .line 780
    iput v5, v4, Ldc/i;->f:I

    .line 781
    .line 782
    invoke-interface {v8, v0, v4}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    .line 784
    .line 785
    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 786
    if-ne v0, v10, :cond_1e

    .line 787
    .line 788
    goto :goto_17

    .line 789
    :cond_24
    :goto_15
    invoke-virtual {v1, v3, v6}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 790
    .line 791
    .line 792
    move-result v2

    .line 793
    if-eqz v2, :cond_25

    .line 794
    .line 795
    goto :goto_16

    .line 796
    :cond_25
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 797
    .line 798
    .line 799
    move-result-object v2

    .line 800
    if-eq v2, v3, :cond_24

    .line 801
    .line 802
    :goto_16
    move-object v10, v0

    .line 803
    :goto_17
    return-object v10

    .line 804
    :goto_18
    invoke-virtual {v1, v2, v6}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 805
    .line 806
    .line 807
    move-result v3

    .line 808
    if-nez v3, :cond_26

    .line 809
    .line 810
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 811
    .line 812
    .line 813
    move-result-object v3

    .line 814
    if-ne v3, v2, :cond_26

    .line 815
    .line 816
    goto :goto_18

    .line 817
    :cond_26
    throw v0

    .line 818
    :pswitch_6
    iget-object v0, v4, Ldc/i;->i:Ljava/lang/Object;

    .line 819
    .line 820
    move-object v13, v0

    .line 821
    check-cast v13, Ldc/d;

    .line 822
    .line 823
    iget-object v0, v4, Ldc/i;->g:Ljava/lang/Object;

    .line 824
    .line 825
    move-object v14, v0

    .line 826
    check-cast v14, Ldc/l0;

    .line 827
    .line 828
    iget v0, v4, Ldc/i;->f:I

    .line 829
    .line 830
    const/4 v6, 0x4

    .line 831
    if-eqz v0, :cond_2a

    .line 832
    .line 833
    if-eq v0, v11, :cond_29

    .line 834
    .line 835
    if-eq v0, v5, :cond_28

    .line 836
    .line 837
    if-eq v0, v2, :cond_29

    .line 838
    .line 839
    if-ne v0, v6, :cond_27

    .line 840
    .line 841
    goto :goto_19

    .line 842
    :cond_27
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 843
    .line 844
    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 845
    .line 846
    .line 847
    throw v0

    .line 848
    :cond_28
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 849
    .line 850
    .line 851
    goto :goto_1a

    .line 852
    :cond_29
    :goto_19
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 853
    .line 854
    .line 855
    goto/16 :goto_1c

    .line 856
    .line 857
    :cond_2a
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 858
    .line 859
    .line 860
    iget-object v0, v4, Ldc/i;->h:Ljava/lang/Object;

    .line 861
    .line 862
    check-cast v0, Ldc/i0;

    .line 863
    .line 864
    sget-object v9, Ldc/e0;->a:Ldc/f0;

    .line 865
    .line 866
    if-ne v0, v9, :cond_2b

    .line 867
    .line 868
    iput v11, v4, Ldc/i;->f:I

    .line 869
    .line 870
    invoke-interface {v13, v14, v4}, Ldc/d;->t0(Ldc/e;Lw8/c;)Ljava/lang/Object;

    .line 871
    .line 872
    .line 873
    move-result-object v0

    .line 874
    if-ne v0, v10, :cond_2e

    .line 875
    .line 876
    goto :goto_1b

    .line 877
    :cond_2b
    sget-object v9, Ldc/e0;->b:Ldc/f0;

    .line 878
    .line 879
    const/4 v11, 0x0

    .line 880
    if-ne v0, v9, :cond_2d

    .line 881
    .line 882
    invoke-virtual {v14}, Lec/b;->f()Lec/z;

    .line 883
    .line 884
    .line 885
    move-result-object v0

    .line 886
    new-instance v1, Lc8/k0;

    .line 887
    .line 888
    invoke-direct {v1, v5, v11, v5}, Lc8/k0;-><init>(ILw8/c;I)V

    .line 889
    .line 890
    .line 891
    iput v5, v4, Ldc/i;->f:I

    .line 892
    .line 893
    invoke-static {v0, v1, v4}, Ldc/b0;->g(Ldc/d;Lf9/n;Ly8/c;)Ljava/lang/Object;

    .line 894
    .line 895
    .line 896
    move-result-object v0

    .line 897
    if-ne v0, v10, :cond_2c

    .line 898
    .line 899
    goto :goto_1b

    .line 900
    :cond_2c
    :goto_1a
    iput v2, v4, Ldc/i;->f:I

    .line 901
    .line 902
    invoke-interface {v13, v14, v4}, Ldc/d;->t0(Ldc/e;Lw8/c;)Ljava/lang/Object;

    .line 903
    .line 904
    .line 905
    move-result-object v0

    .line 906
    if-ne v0, v10, :cond_2e

    .line 907
    .line 908
    goto :goto_1b

    .line 909
    :cond_2d
    invoke-virtual {v14}, Lec/b;->f()Lec/z;

    .line 910
    .line 911
    .line 912
    move-result-object v17

    .line 913
    new-instance v2, Ldc/g0;

    .line 914
    .line 915
    invoke-direct {v2, v0, v11}, Ldc/g0;-><init>(Ldc/i0;Lw8/c;)V

    .line 916
    .line 917
    .line 918
    sget v0, Ldc/p;->a:I

    .line 919
    .line 920
    new-instance v15, Lec/k;

    .line 921
    .line 922
    const/16 v19, -0x2

    .line 923
    .line 924
    sget-object v20, Lcc/a;->a:Lcc/a;

    .line 925
    .line 926
    sget-object v18, Lw8/i;->a:Lw8/i;

    .line 927
    .line 928
    move-object/from16 v16, v2

    .line 929
    .line 930
    invoke-direct/range {v15 .. v20}, Lec/k;-><init>(Lf9/o;Ldc/d;Lw8/h;ILcc/a;)V

    .line 931
    .line 932
    .line 933
    new-instance v0, Ldc/h0;

    .line 934
    .line 935
    invoke-direct {v0, v5, v11, v3}, Ldc/h0;-><init>(ILw8/c;I)V

    .line 936
    .line 937
    .line 938
    new-instance v2, Landroid/support/v4/media/session/t;

    .line 939
    .line 940
    invoke-direct {v2, v1, v15, v0}, Landroid/support/v4/media/session/t;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 941
    .line 942
    .line 943
    invoke-static {v2}, Ldc/b0;->e(Ldc/d;)Ldc/d;

    .line 944
    .line 945
    .line 946
    move-result-object v0

    .line 947
    invoke-static {v0}, Ldc/b0;->e(Ldc/d;)Ldc/d;

    .line 948
    .line 949
    .line 950
    move-result-object v0

    .line 951
    new-instance v12, Ldc/i;

    .line 952
    .line 953
    move-object v15, v8

    .line 954
    check-cast v15, Ljava/lang/Float;

    .line 955
    .line 956
    const/16 v17, 0x1

    .line 957
    .line 958
    move-object/from16 v16, v11

    .line 959
    .line 960
    invoke-direct/range {v12 .. v17}, Ldc/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V

    .line 961
    .line 962
    .line 963
    iput v6, v4, Ldc/i;->f:I

    .line 964
    .line 965
    invoke-static {v0, v12, v4}, Ldc/b0;->d(Ldc/d;Lf9/n;Lw8/c;)Ljava/lang/Object;

    .line 966
    .line 967
    .line 968
    move-result-object v0

    .line 969
    if-ne v0, v10, :cond_2e

    .line 970
    .line 971
    :goto_1b
    move-object v7, v10

    .line 972
    :cond_2e
    :goto_1c
    return-object v7

    .line 973
    :pswitch_7
    iget-object v0, v4, Ldc/i;->i:Ljava/lang/Object;

    .line 974
    .line 975
    check-cast v0, Ldc/l0;

    .line 976
    .line 977
    iget v1, v4, Ldc/i;->f:I

    .line 978
    .line 979
    if-eqz v1, :cond_30

    .line 980
    .line 981
    if-ne v1, v11, :cond_2f

    .line 982
    .line 983
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 984
    .line 985
    .line 986
    goto :goto_1d

    .line 987
    :cond_2f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 988
    .line 989
    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 990
    .line 991
    .line 992
    throw v0

    .line 993
    :cond_30
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 994
    .line 995
    .line 996
    iget-object v1, v4, Ldc/i;->g:Ljava/lang/Object;

    .line 997
    .line 998
    check-cast v1, Ldc/d0;

    .line 999
    .line 1000
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 1001
    .line 1002
    .line 1003
    move-result v1

    .line 1004
    if-eqz v1, :cond_33

    .line 1005
    .line 1006
    if-eq v1, v11, :cond_34

    .line 1007
    .line 1008
    if-ne v1, v5, :cond_32

    .line 1009
    .line 1010
    check-cast v8, Ljava/lang/Float;

    .line 1011
    .line 1012
    sget-object v1, Ldc/b0;->a:Lfc/s;

    .line 1013
    .line 1014
    if-eq v8, v1, :cond_31

    .line 1015
    .line 1016
    invoke-virtual {v0, v6, v8}, Ldc/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1017
    .line 1018
    .line 1019
    goto :goto_1d

    .line 1020
    :cond_31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1021
    .line 1022
    .line 1023
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 1024
    .line 1025
    const-string v1, "MutableStateFlow.resetReplayCache is not supported"

    .line 1026
    .line 1027
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 1028
    .line 1029
    .line 1030
    throw v0

    .line 1031
    :cond_32
    new-instance v0, Lac/p;

    .line 1032
    .line 1033
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 1034
    .line 1035
    .line 1036
    throw v0

    .line 1037
    :cond_33
    iget-object v1, v4, Ldc/i;->h:Ljava/lang/Object;

    .line 1038
    .line 1039
    check-cast v1, Ldc/d;

    .line 1040
    .line 1041
    iput v11, v4, Ldc/i;->f:I

    .line 1042
    .line 1043
    invoke-interface {v1, v0, v4}, Ldc/d;->t0(Ldc/e;Lw8/c;)Ljava/lang/Object;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v0

    .line 1047
    if-ne v0, v10, :cond_34

    .line 1048
    .line 1049
    move-object v7, v10

    .line 1050
    :cond_34
    :goto_1d
    return-object v7

    .line 1051
    :pswitch_8
    iget v0, v4, Ldc/i;->f:I

    .line 1052
    .line 1053
    if-eqz v0, :cond_36

    .line 1054
    .line 1055
    if-ne v0, v11, :cond_35

    .line 1056
    .line 1057
    iget-object v0, v4, Ldc/i;->h:Ljava/lang/Object;

    .line 1058
    .line 1059
    check-cast v0, Lg9/x;

    .line 1060
    .line 1061
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 1062
    .line 1063
    .line 1064
    goto :goto_21

    .line 1065
    :cond_35
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1066
    .line 1067
    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1068
    .line 1069
    .line 1070
    throw v0

    .line 1071
    :cond_36
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 1072
    .line 1073
    .line 1074
    iget-object v0, v4, Ldc/i;->g:Ljava/lang/Object;

    .line 1075
    .line 1076
    check-cast v0, Lcc/o;

    .line 1077
    .line 1078
    iget-object v0, v0, Lcc/o;->a:Ljava/lang/Object;

    .line 1079
    .line 1080
    iget-object v1, v4, Ldc/i;->i:Ljava/lang/Object;

    .line 1081
    .line 1082
    check-cast v1, Lg9/x;

    .line 1083
    .line 1084
    instance-of v2, v0, Lcc/n;

    .line 1085
    .line 1086
    if-nez v2, :cond_37

    .line 1087
    .line 1088
    iput-object v0, v1, Lg9/x;->b:Ljava/lang/Object;

    .line 1089
    .line 1090
    :cond_37
    check-cast v8, Ldc/e;

    .line 1091
    .line 1092
    if-eqz v2, :cond_3e

    .line 1093
    .line 1094
    instance-of v2, v0, Lcc/m;

    .line 1095
    .line 1096
    if-eqz v2, :cond_38

    .line 1097
    .line 1098
    move-object v2, v0

    .line 1099
    check-cast v2, Lcc/m;

    .line 1100
    .line 1101
    goto :goto_1e

    .line 1102
    :cond_38
    move-object v2, v6

    .line 1103
    :goto_1e
    if-eqz v2, :cond_39

    .line 1104
    .line 1105
    iget-object v2, v2, Lcc/m;->a:Ljava/lang/Throwable;

    .line 1106
    .line 1107
    goto :goto_1f

    .line 1108
    :cond_39
    move-object v2, v6

    .line 1109
    :goto_1f
    if-nez v2, :cond_3d

    .line 1110
    .line 1111
    iget-object v2, v1, Lg9/x;->b:Ljava/lang/Object;

    .line 1112
    .line 1113
    if-eqz v2, :cond_3c

    .line 1114
    .line 1115
    sget-object v3, Lec/c;->b:Lfc/s;

    .line 1116
    .line 1117
    if-ne v2, v3, :cond_3a

    .line 1118
    .line 1119
    goto :goto_20

    .line 1120
    :cond_3a
    move-object v6, v2

    .line 1121
    :goto_20
    iput-object v0, v4, Ldc/i;->g:Ljava/lang/Object;

    .line 1122
    .line 1123
    iput-object v1, v4, Ldc/i;->h:Ljava/lang/Object;

    .line 1124
    .line 1125
    iput v11, v4, Ldc/i;->f:I

    .line 1126
    .line 1127
    invoke-interface {v8, v6, v4}, Ldc/e;->a(Ljava/lang/Object;Lw8/c;)Ljava/lang/Object;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v0

    .line 1131
    if-ne v0, v10, :cond_3b

    .line 1132
    .line 1133
    move-object v7, v10

    .line 1134
    goto :goto_22

    .line 1135
    :cond_3b
    move-object v0, v1

    .line 1136
    :goto_21
    move-object v1, v0

    .line 1137
    :cond_3c
    sget-object v0, Lec/c;->d:Lfc/s;

    .line 1138
    .line 1139
    iput-object v0, v1, Lg9/x;->b:Ljava/lang/Object;

    .line 1140
    .line 1141
    goto :goto_22

    .line 1142
    :cond_3d
    throw v2

    .line 1143
    :cond_3e
    :goto_22
    return-object v7

    .line 1144
    nop

    .line 1145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
