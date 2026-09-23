.class public final Li7/b;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# direct methods
.method public static a(Li7/b;Ll7/c;IZLi7/m;I)Landroid/media/AudioTrack;
    .locals 20

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    and-int/lit8 v2, p5, 0x10

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    new-instance v2, Lb3/f0;

    .line 10
    .line 11
    const/16 v3, 0x9

    .line 12
    .line 13
    invoke-direct {v2, v3}, Lb3/f0;-><init>(I)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object/from16 v2, p4

    .line 18
    .line 19
    :goto_0
    const-string v3, "params"

    .line 20
    .line 21
    invoke-static {v0, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget v3, v0, Ll7/c;->c:I

    .line 25
    .line 26
    iget v4, v0, Ll7/c;->b:I

    .line 27
    .line 28
    const/16 v5, 0xc

    .line 29
    .line 30
    const/4 v6, 0x4

    .line 31
    const/4 v7, 0x1

    .line 32
    const/4 v8, 0x0

    .line 33
    :try_start_0
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 34
    .line 35
    const/4 v10, 0x3

    .line 36
    const/4 v11, 0x2

    .line 37
    const/16 v12, 0x17

    .line 38
    .line 39
    if-lt v9, v12, :cond_1

    .line 40
    .line 41
    if-eqz p3, :cond_2

    .line 42
    .line 43
    :cond_1
    move/from16 v14, p2

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    invoke-static {}, Li7/a;->p()V

    .line 47
    .line 48
    .line 49
    invoke-static {}, Li7/a;->d()Landroid/media/AudioTrack$Builder;

    .line 50
    .line 51
    .line 52
    move-result-object v9

    .line 53
    new-instance v12, Landroid/media/AudioAttributes$Builder;

    .line 54
    .line 55
    invoke-direct {v12}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 56
    .line 57
    .line 58
    move/from16 v14, p2

    .line 59
    .line 60
    invoke-virtual {v12, v14}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 61
    .line 62
    .line 63
    move-result-object v12

    .line 64
    invoke-virtual {v12, v11}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 65
    .line 66
    .line 67
    move-result-object v12

    .line 68
    invoke-virtual {v12}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 69
    .line 70
    .line 71
    move-result-object v12

    .line 72
    invoke-static {v9, v12}, Li7/a;->g(Landroid/media/AudioTrack$Builder;Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    new-instance v12, Landroid/media/AudioFormat$Builder;

    .line 77
    .line 78
    invoke-direct {v12}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 79
    .line 80
    .line 81
    iget v13, v0, Ll7/c;->a:I

    .line 82
    .line 83
    invoke-virtual {v12, v13}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    .line 84
    .line 85
    .line 86
    move-result-object v12

    .line 87
    if-ne v4, v7, :cond_3

    .line 88
    .line 89
    const/4 v13, 0x4

    .line 90
    goto :goto_1

    .line 91
    :cond_3
    const/16 v13, 0xc

    .line 92
    .line 93
    :goto_1
    invoke-virtual {v12, v13}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 94
    .line 95
    .line 96
    move-result-object v12

    .line 97
    if-ne v3, v1, :cond_4

    .line 98
    .line 99
    const/4 v10, 0x2

    .line 100
    :cond_4
    invoke-virtual {v12, v10}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-static {v9, v1}, Li7/a;->h(Landroid/media/AudioTrack$Builder;Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-static {v1}, Li7/a;->e(Landroid/media/AudioTrack$Builder;)Landroid/media/AudioTrack$Builder;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v0}, Ll7/c;->a()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    invoke-static {v1, v0}, Li7/a;->f(Landroid/media/AudioTrack$Builder;I)Landroid/media/AudioTrack$Builder;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-static {v0, v8}, Li7/a;->x(Landroid/media/AudioTrack$Builder;I)Landroid/media/AudioTrack$Builder;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-static {v0}, Li7/a;->i(Landroid/media/AudioTrack$Builder;)Landroid/media/AudioTrack;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    return-object v0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    goto :goto_5

    .line 138
    :goto_2
    new-instance v13, Landroid/media/AudioTrack;

    .line 139
    .line 140
    iget v15, v0, Ll7/c;->a:I

    .line 141
    .line 142
    if-ne v4, v7, :cond_5

    .line 143
    .line 144
    const/16 v16, 0x4

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_5
    const/16 v16, 0xc

    .line 148
    .line 149
    :goto_3
    if-ne v3, v1, :cond_6

    .line 150
    .line 151
    const/16 v17, 0x2

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_6
    const/16 v17, 0x3

    .line 155
    .line 156
    :goto_4
    invoke-virtual {v0}, Ll7/c;->a()I

    .line 157
    .line 158
    .line 159
    move-result v18

    .line 160
    const/16 v19, 0x1

    .line 161
    .line 162
    invoke-direct/range {v13 .. v19}, Landroid/media/AudioTrack;-><init>(IIIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .line 164
    .line 165
    return-object v13

    .line 166
    :goto_5
    sget-object v1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 167
    .line 168
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    if-ne v4, v7, :cond_7

    .line 173
    .line 174
    const/4 v5, 0x4

    .line 175
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    const-string v4, "AudioTrack \u6784\u9020\u5931\u8d25: "

    .line 178
    .line 179
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string v0, ", channelConfig="

    .line 186
    .line 187
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    new-array v3, v7, [Ljava/lang/Object;

    .line 198
    .line 199
    aput-object v0, v3, v8

    .line 200
    .line 201
    const-string v0, "CarLife_SDK"

    .line 202
    .line 203
    invoke-virtual {v1, v0, v3}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    invoke-interface {v2}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    const/4 v0, 0x0

    .line 210
    return-object v0
.end method
