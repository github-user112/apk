.class public final synthetic Lc8/m0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lf9/k;

.field public final synthetic c:Lf1/b1;

.field public final synthetic d:Lf1/b1;

.field public final synthetic e:Lf1/h1;


# direct methods
.method public synthetic constructor <init>(Lf9/k;Lc8/p0;Lf1/b1;Lf1/h1;Lf1/b1;)V
    .locals 0

    .line 1
    const/4 p2, 0x0

    iput p2, p0, Lc8/m0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc8/m0;->b:Lf9/k;

    iput-object p3, p0, Lc8/m0;->c:Lf1/b1;

    iput-object p4, p0, Lc8/m0;->e:Lf1/h1;

    iput-object p5, p0, Lc8/m0;->d:Lf1/b1;

    return-void
.end method

.method public synthetic constructor <init>(Lf9/k;Ly7/u;Lf1/b1;Lf1/b1;Lf1/h1;)V
    .locals 0

    .line 2
    const/4 p2, 0x1

    iput p2, p0, Lc8/m0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc8/m0;->b:Lf9/k;

    iput-object p3, p0, Lc8/m0;->c:Lf1/b1;

    iput-object p4, p0, Lc8/m0;->d:Lf1/b1;

    iput-object p5, p0, Lc8/m0;->e:Lf1/h1;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lc8/m0;->a:I

    .line 2
    .line 3
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Lc8/m0;->e:Lf1/h1;

    .line 7
    .line 8
    iget-object v4, p0, Lc8/m0;->d:Lf1/b1;

    .line 9
    .line 10
    iget-object v5, p0, Lc8/m0;->c:Lf1/b1;

    .line 11
    .line 12
    iget-object v6, p0, Lc8/m0;->b:Lf9/k;

    .line 13
    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    sget v0, Ly7/u;->c:I

    .line 18
    .line 19
    invoke-interface {v5}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    sget-object v0, Ll8/c;->a:Lfc/c;

    .line 32
    .line 33
    const-string v0, "\u672a\u9009\u62e9\u97f3\u9891\u6587\u4ef6"

    .line 34
    .line 35
    invoke-static {v2, v0}, Ll8/c;->g(ILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance v0, Lz7/a2;

    .line 40
    .line 41
    invoke-interface {v5}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Ljava/lang/String;

    .line 46
    .line 47
    new-instance v7, Lz7/p;

    .line 48
    .line 49
    invoke-interface {v5}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    check-cast v5, Ljava/lang/String;

    .line 54
    .line 55
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Ljava/lang/Boolean;

    .line 60
    .line 61
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    invoke-virtual {v3}, Lf1/h1;->f()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    invoke-direct {v7, v5, v3, v4}, Lz7/p;-><init>(Ljava/lang/String;IZ)V

    .line 70
    .line 71
    .line 72
    const-string v3, "Audio"

    .line 73
    .line 74
    const-string v4, "\u64ad\u653e\u97f3\u9891"

    .line 75
    .line 76
    invoke-direct {v0, v3, v4, v2, v7}, Lz7/a2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz7/q1;)V

    .line 77
    .line 78
    .line 79
    invoke-interface {v6, v0}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    :goto_0
    return-object v1

    .line 83
    :pswitch_0
    invoke-interface {v5}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-nez v0, :cond_1

    .line 94
    .line 95
    sget-object v0, Ll8/c;->a:Lfc/c;

    .line 96
    .line 97
    const-string v0, "\u6309\u952e\u6620\u5c04\u4e0d\u80fd\u4e3a\u7a7a"

    .line 98
    .line 99
    invoke-static {v2, v0}, Ll8/c;->g(ILjava/lang/String;)V

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_1
    new-instance v0, Lz7/a2;

    .line 104
    .line 105
    invoke-virtual {v3}, Lf1/h1;->f()I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    sget-object v7, Lz7/a;->c:Ln6/a;

    .line 110
    .line 111
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    invoke-static {v2}, Ln6/a;->k(I)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-interface {v5}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    check-cast v7, Ljava/lang/String;

    .line 123
    .line 124
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    check-cast v8, Ljava/lang/Boolean;

    .line 129
    .line 130
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 131
    .line 132
    .line 133
    move-result v8

    .line 134
    if-eqz v8, :cond_2

    .line 135
    .line 136
    const-string v8, "\u963b\u6b62\u5176\u4ed6\u4e8b\u4ef6"

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_2
    const-string v8, ""

    .line 140
    .line 141
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v2, " "

    .line 153
    .line 154
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    new-instance v7, Lz7/l0;

    .line 165
    .line 166
    invoke-interface {v5}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    check-cast v5, Ljava/lang/String;

    .line 171
    .line 172
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    invoke-virtual {v3}, Lf1/h1;->f()I

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    check-cast v4, Ljava/lang/Boolean;

    .line 185
    .line 186
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    invoke-direct {v7, v5, v3, v4}, Lz7/l0;-><init>(IIZ)V

    .line 191
    .line 192
    .line 193
    const-string v3, "KeyBoard"

    .line 194
    .line 195
    const-string v4, "\u7269\u7406\u6309\u952e"

    .line 196
    .line 197
    invoke-direct {v0, v3, v4, v2, v7}, Lz7/a2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz7/q1;)V

    .line 198
    .line 199
    .line 200
    invoke-interface {v6, v0}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    :goto_2
    return-object v1

    .line 204
    nop

    .line 205
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
