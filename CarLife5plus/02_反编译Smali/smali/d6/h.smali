.class public Ld6/h;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lj2/a;


# instance fields
.field public final synthetic a:I

.field public b:Z

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/journeyapps/barcodescanner/CaptureActivity;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Ld6/h;->a:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Ld6/h;->b:Z

    const/4 v0, 0x3

    .line 6
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ld6/h;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lj/g;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Ld6/h;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld6/h;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Ld6/h;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;IZ)V
    .locals 0

    .line 1
    iput p2, p0, Ld6/h;->a:I

    iput-boolean p3, p0, Ld6/h;->b:Z

    iput-object p1, p0, Ld6/h;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic E(IJ)J
    .locals 0

    .line 1
    const-wide/16 p1, 0x0

    .line 2
    .line 3
    return-wide p1
.end method

.method public O(JLw8/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Ln3/q;

    .line 2
    .line 3
    const-wide/16 p2, 0x0

    .line 4
    .line 5
    invoke-direct {p1, p2, p3}, Ln3/q;-><init>(J)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public a()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ld6/h;->b:Z

    .line 3
    .line 4
    return-void
.end method

.method public b()V
    .locals 8

    .line 1
    new-instance v1, Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lq5/b;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Lq5/c;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 37
    .line 38
    .line 39
    :try_start_0
    iget-object v0, p0, Ld6/h;->c:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, Landroid/content/Context;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const/high16 v2, 0x7f0d0000

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    .line 50
    .line 51
    .line 52
    move-result-object v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :try_start_1
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    .line 58
    .line 59
    .line 60
    move-result-wide v3

    .line 61
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    .line 62
    .line 63
    .line 64
    move-result-wide v5

    .line 65
    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    .line 67
    .line 68
    :try_start_2
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 69
    .line 70
    .line 71
    const v0, 0x3dcccccd    # 0.1f

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    .line 87
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 88
    .line 89
    .line 90
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 91
    :goto_0
    const-string v2, "h"

    .line 92
    .line 93
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public c(B)V
    .locals 3

    .line 1
    iget-object v0, p0, Ld6/h;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lj/g;

    .line 4
    .line 5
    int-to-long v1, p1

    .line 6
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Lj/g;->k(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public d(C)V
    .locals 4

    .line 1
    iget-object v0, p0, Ld6/h;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lj/g;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    iget v2, v0, Lj/g;->b:I

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lj/g;->e(II)V

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Lj/g;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, [C

    .line 14
    .line 15
    iget v2, v0, Lj/g;->b:I

    .line 16
    .line 17
    add-int/lit8 v3, v2, 0x1

    .line 18
    .line 19
    iput v3, v0, Lj/g;->b:I

    .line 20
    .line 21
    aput-char p1, v1, v2

    .line 22
    .line 23
    return-void
.end method

.method public e(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Ld6/h;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lj/g;

    .line 4
    .line 5
    int-to-long v1, p1

    .line 6
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Lj/g;->k(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public f(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld6/h;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lj/g;

    .line 4
    .line 5
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Lj/g;->k(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public f0(JJI)J
    .locals 0

    .line 1
    iget-boolean p1, p0, Ld6/h;->b:Z

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    iget-object p1, p0, Ld6/h;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p1, Lz/s1;

    .line 8
    .line 9
    iget-object p2, p1, Lz/s1;->a:Lz/m1;

    .line 10
    .line 11
    invoke-interface {p2}, Lz/m1;->a()Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p2, p1, Lz/s1;->a:Lz/m1;

    .line 19
    .line 20
    invoke-virtual {p1, p3, p4}, Lz/s1;->g(J)F

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    invoke-virtual {p1, p3}, Lz/s1;->d(F)F

    .line 25
    .line 26
    .line 27
    move-result p3

    .line 28
    invoke-interface {p2, p3}, Lz/m1;->d(F)F

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    invoke-virtual {p1, p2}, Lz/s1;->d(F)F

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    invoke-virtual {p1, p2}, Lz/s1;->h(F)J

    .line 37
    .line 38
    .line 39
    move-result-wide p1

    .line 40
    return-wide p1

    .line 41
    :cond_1
    :goto_0
    const-wide/16 p1, 0x0

    .line 42
    .line 43
    return-wide p1
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ld6/h;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lj/g;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lj/g;->k(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public h(S)V
    .locals 3

    .line 1
    iget-object v0, p0, Ld6/h;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lj/g;

    .line 4
    .line 5
    int-to-long v1, p1

    .line 6
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Lj/g;->k(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 11

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ld6/h;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lj/g;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x2

    .line 15
    add-int/2addr v1, v2

    .line 16
    iget v3, v0, Lj/g;->b:I

    .line 17
    .line 18
    invoke-virtual {v0, v3, v1}, Lj/g;->e(II)V

    .line 19
    .line 20
    .line 21
    iget-object v1, v0, Lj/g;->c:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, [C

    .line 24
    .line 25
    iget v3, v0, Lj/g;->b:I

    .line 26
    .line 27
    add-int/lit8 v4, v3, 0x1

    .line 28
    .line 29
    const/16 v5, 0x22

    .line 30
    .line 31
    aput-char v5, v1, v3

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    const/4 v6, 0x0

    .line 38
    invoke-virtual {p1, v6, v3, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 39
    .line 40
    .line 41
    add-int/2addr v3, v4

    .line 42
    move v7, v4

    .line 43
    :goto_0
    if-ge v7, v3, :cond_5

    .line 44
    .line 45
    aget-char v8, v1, v7

    .line 46
    .line 47
    sget-object v9, Lpc/u;->b:[B

    .line 48
    .line 49
    array-length v10, v9

    .line 50
    if-ge v8, v10, :cond_4

    .line 51
    .line 52
    aget-byte v8, v9, v8

    .line 53
    .line 54
    if-eqz v8, :cond_4

    .line 55
    .line 56
    sub-int v1, v7, v4

    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    :goto_1
    const/4 v4, 0x1

    .line 63
    if-ge v1, v3, :cond_3

    .line 64
    .line 65
    invoke-virtual {v0, v7, v2}, Lj/g;->e(II)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    sget-object v9, Lpc/u;->b:[B

    .line 73
    .line 74
    array-length v10, v9

    .line 75
    if-ge v8, v10, :cond_2

    .line 76
    .line 77
    aget-byte v9, v9, v8

    .line 78
    .line 79
    if-nez v9, :cond_0

    .line 80
    .line 81
    iget-object v4, v0, Lj/g;->c:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v4, [C

    .line 84
    .line 85
    add-int/lit8 v9, v7, 0x1

    .line 86
    .line 87
    int-to-char v8, v8

    .line 88
    aput-char v8, v4, v7

    .line 89
    .line 90
    :goto_2
    move v7, v9

    .line 91
    goto :goto_3

    .line 92
    :cond_0
    if-ne v9, v4, :cond_1

    .line 93
    .line 94
    sget-object v4, Lpc/u;->a:[Ljava/lang/String;

    .line 95
    .line 96
    aget-object v4, v4, v8

    .line 97
    .line 98
    invoke-static {v4}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 102
    .line 103
    .line 104
    move-result v8

    .line 105
    invoke-virtual {v0, v7, v8}, Lj/g;->e(II)V

    .line 106
    .line 107
    .line 108
    iget-object v8, v0, Lj/g;->c:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v8, [C

    .line 111
    .line 112
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 113
    .line 114
    .line 115
    move-result v9

    .line 116
    invoke-virtual {v4, v6, v9, v8, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    add-int/2addr v4, v7

    .line 124
    iput v4, v0, Lj/g;->b:I

    .line 125
    .line 126
    move v7, v4

    .line 127
    goto :goto_3

    .line 128
    :cond_1
    iget-object v4, v0, Lj/g;->c:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast v4, [C

    .line 131
    .line 132
    const/16 v8, 0x5c

    .line 133
    .line 134
    aput-char v8, v4, v7

    .line 135
    .line 136
    add-int/lit8 v8, v7, 0x1

    .line 137
    .line 138
    int-to-char v9, v9

    .line 139
    aput-char v9, v4, v8

    .line 140
    .line 141
    add-int/lit8 v7, v7, 0x2

    .line 142
    .line 143
    iput v7, v0, Lj/g;->b:I

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_2
    iget-object v4, v0, Lj/g;->c:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v4, [C

    .line 149
    .line 150
    add-int/lit8 v9, v7, 0x1

    .line 151
    .line 152
    int-to-char v8, v8

    .line 153
    aput-char v8, v4, v7

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_3
    invoke-virtual {v0, v7, v4}, Lj/g;->e(II)V

    .line 160
    .line 161
    .line 162
    iget-object p1, v0, Lj/g;->c:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast p1, [C

    .line 165
    .line 166
    add-int/lit8 v1, v7, 0x1

    .line 167
    .line 168
    aput-char v5, p1, v7

    .line 169
    .line 170
    iput v1, v0, Lj/g;->b:I

    .line 171
    .line 172
    return-void

    .line 173
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 174
    .line 175
    goto/16 :goto_0

    .line 176
    .line 177
    :cond_5
    add-int/lit8 p1, v3, 0x1

    .line 178
    .line 179
    aput-char v5, v1, v3

    .line 180
    .line 181
    iput p1, v0, Lj/g;->b:I

    .line 182
    .line 183
    return-void
.end method

.method public j()V
    .locals 0

    .line 1
    return-void
.end method

.method public k()V
    .locals 0

    .line 1
    return-void
.end method

.method public r(JJLw8/c;)Ljava/lang/Object;
    .locals 3

    .line 1
    instance-of p1, p5, Lz/i1;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    move-object p1, p5

    .line 6
    check-cast p1, Lz/i1;

    .line 7
    .line 8
    iget p2, p1, Lz/i1;->g:I

    .line 9
    .line 10
    const/high16 v0, -0x80000000

    .line 11
    .line 12
    and-int v1, p2, v0

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    sub-int/2addr p2, v0

    .line 17
    iput p2, p1, Lz/i1;->g:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Lz/i1;

    .line 21
    .line 22
    check-cast p5, Ly8/c;

    .line 23
    .line 24
    invoke-direct {p1, p0, p5}, Lz/i1;-><init>(Ld6/h;Ly8/c;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p2, p1, Lz/i1;->e:Ljava/lang/Object;

    .line 28
    .line 29
    iget p5, p1, Lz/i1;->g:I

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    if-eqz p5, :cond_2

    .line 33
    .line 34
    if-ne p5, v0, :cond_1

    .line 35
    .line 36
    iget-wide p3, p1, Lz/i1;->d:J

    .line 37
    .line 38
    invoke-static {p2}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_2
    invoke-static {p2}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-boolean p2, p0, Ld6/h;->b:Z

    .line 54
    .line 55
    const-wide/16 v1, 0x0

    .line 56
    .line 57
    if-eqz p2, :cond_5

    .line 58
    .line 59
    iget-object p2, p0, Ld6/h;->c:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast p2, Lz/s1;

    .line 62
    .line 63
    iget-boolean p5, p2, Lz/s1;->i:Z

    .line 64
    .line 65
    if-eqz p5, :cond_3

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_3
    iput-wide p3, p1, Lz/i1;->d:J

    .line 69
    .line 70
    iput v0, p1, Lz/i1;->g:I

    .line 71
    .line 72
    invoke-virtual {p2, p3, p4, p1}, Lz/s1;->a(JLy8/c;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    sget-object p1, Lx8/a;->a:Lx8/a;

    .line 77
    .line 78
    if-ne p2, p1, :cond_4

    .line 79
    .line 80
    return-object p1

    .line 81
    :cond_4
    :goto_1
    check-cast p2, Ln3/q;

    .line 82
    .line 83
    iget-wide v1, p2, Ln3/q;->a:J

    .line 84
    .line 85
    :goto_2
    invoke-static {p3, p4, v1, v2}, Ln3/q;->d(JJ)J

    .line 86
    .line 87
    .line 88
    move-result-wide v1

    .line 89
    :cond_5
    new-instance p1, Ln3/q;

    .line 90
    .line 91
    invoke-direct {p1, v1, v2}, Ln3/q;-><init>(J)V

    .line 92
    .line 93
    .line 94
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Ld6/h;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    iget-boolean v0, p0, Ld6/h;->b:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string v0, "FALL_THROUGH"

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Ld6/h;->c:Ljava/lang/Object;

    .line 19
    .line 20
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :goto_0
    return-object v0

    .line 25
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
