.class public final Lk7/k;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final l:Z

.field public static final m:Ldc/l0;

.field public static final n:Ldc/l0;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:I

.field public final j:I

.field public final k:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    sput-boolean v0, Lk7/k;->l:Z

    .line 13
    .line 14
    new-instance v4, Lk7/k;

    .line 15
    .line 16
    sget-object v1, Ll8/d;->a:Lr8/o;

    .line 17
    .line 18
    const-string v1, "AUDIO_MEDIA_VOLUME"

    .line 19
    .line 20
    const/16 v5, 0x64

    .line 21
    .line 22
    invoke-static {v5, v1}, Ll8/d;->b(ILjava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    const-string v1, "AUDIO_MEDIA_CACHE"

    .line 27
    .line 28
    const/16 v6, 0x100

    .line 29
    .line 30
    invoke-static {v6, v1}, Ll8/d;->b(ILjava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    const-string v1, "AUDIO_MEDIA_VERSION"

    .line 35
    .line 36
    invoke-static {v1, v2}, Ll8/d;->a(Ljava/lang/String;Z)Z

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    const-string v1, "AUDIO_TTS_VERSION"

    .line 41
    .line 42
    invoke-static {v1, v2}, Ll8/d;->a(Ljava/lang/String;Z)Z

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    const-string v1, "AUDIO_VR_VERSION"

    .line 47
    .line 48
    invoke-static {v1, v2}, Ll8/d;->a(Ljava/lang/String;Z)Z

    .line 49
    .line 50
    .line 51
    move-result v9

    .line 52
    const-string v1, "AUDIO_MEDIA_FOCUS"

    .line 53
    .line 54
    invoke-static {v1, v3}, Ll8/d;->a(Ljava/lang/String;Z)Z

    .line 55
    .line 56
    .line 57
    move-result v10

    .line 58
    const-string v1, "AUDIO_TTS_FOCUS"

    .line 59
    .line 60
    invoke-static {v1, v3}, Ll8/d;->a(Ljava/lang/String;Z)Z

    .line 61
    .line 62
    .line 63
    move-result v11

    .line 64
    const-string v1, "AUDIO_VR_FOCUS"

    .line 65
    .line 66
    invoke-static {v1, v3}, Ll8/d;->a(Ljava/lang/String;Z)Z

    .line 67
    .line 68
    .line 69
    move-result v12

    .line 70
    const/4 v1, 0x3

    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    const/4 v2, 0x3

    .line 74
    goto :goto_1

    .line 75
    :cond_1
    const/4 v2, 0x1

    .line 76
    :goto_1
    const-string v13, "AUDIO_MEDIA"

    .line 77
    .line 78
    invoke-static {v2, v13}, Ll8/d;->b(ILjava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result v13

    .line 82
    if-eqz v0, :cond_2

    .line 83
    .line 84
    const/4 v2, 0x3

    .line 85
    goto :goto_2

    .line 86
    :cond_2
    const/16 v2, 0xc

    .line 87
    .line 88
    :goto_2
    const-string v14, "AUDIO_TTS"

    .line 89
    .line 90
    invoke-static {v2, v14}, Ll8/d;->b(ILjava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result v14

    .line 94
    if-eqz v0, :cond_3

    .line 95
    .line 96
    const/4 v3, 0x3

    .line 97
    :cond_3
    const-string v0, "AUDIO_VR"

    .line 98
    .line 99
    invoke-static {v3, v0}, Ll8/d;->b(ILjava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-result v15

    .line 103
    invoke-direct/range {v4 .. v15}, Lk7/k;-><init>(IIZZZZZZIII)V

    .line 104
    .line 105
    .line 106
    invoke-static {v4}, Ldc/b0;->b(Ljava/lang/Object;)Ldc/l0;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    sput-object v0, Lk7/k;->m:Ldc/l0;

    .line 111
    .line 112
    sput-object v0, Lk7/k;->n:Ldc/l0;

    .line 113
    .line 114
    return-void
.end method

.method public constructor <init>(IIZZZZZZIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lk7/k;->a:I

    .line 5
    .line 6
    iput p2, p0, Lk7/k;->b:I

    .line 7
    .line 8
    iput-boolean p3, p0, Lk7/k;->c:Z

    .line 9
    .line 10
    iput-boolean p4, p0, Lk7/k;->d:Z

    .line 11
    .line 12
    iput-boolean p5, p0, Lk7/k;->e:Z

    .line 13
    .line 14
    iput-boolean p6, p0, Lk7/k;->f:Z

    .line 15
    .line 16
    iput-boolean p7, p0, Lk7/k;->g:Z

    .line 17
    .line 18
    iput-boolean p8, p0, Lk7/k;->h:Z

    .line 19
    .line 20
    iput p9, p0, Lk7/k;->i:I

    .line 21
    .line 22
    iput p10, p0, Lk7/k;->j:I

    .line 23
    .line 24
    iput p11, p0, Lk7/k;->k:I

    .line 25
    .line 26
    return-void
.end method

.method public static a(Lk7/k;IZZZZZZIIII)Lk7/k;
    .locals 12

    .line 1
    move/from16 v0, p11

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget p1, p0, Lk7/k;->a:I

    .line 8
    .line 9
    :cond_0
    move v1, p1

    .line 10
    iget v2, p0, Lk7/k;->b:I

    .line 11
    .line 12
    and-int/lit8 p1, v0, 0x4

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-boolean p2, p0, Lk7/k;->c:Z

    .line 17
    .line 18
    :cond_1
    move v3, p2

    .line 19
    and-int/lit8 p1, v0, 0x8

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    iget-boolean p3, p0, Lk7/k;->d:Z

    .line 24
    .line 25
    :cond_2
    move v4, p3

    .line 26
    and-int/lit8 p1, v0, 0x10

    .line 27
    .line 28
    if-eqz p1, :cond_3

    .line 29
    .line 30
    iget-boolean p1, p0, Lk7/k;->e:Z

    .line 31
    .line 32
    move v5, p1

    .line 33
    goto :goto_0

    .line 34
    :cond_3
    move/from16 v5, p4

    .line 35
    .line 36
    :goto_0
    and-int/lit8 p1, v0, 0x20

    .line 37
    .line 38
    if-eqz p1, :cond_4

    .line 39
    .line 40
    iget-boolean p1, p0, Lk7/k;->f:Z

    .line 41
    .line 42
    move v6, p1

    .line 43
    goto :goto_1

    .line 44
    :cond_4
    move/from16 v6, p5

    .line 45
    .line 46
    :goto_1
    and-int/lit8 p1, v0, 0x40

    .line 47
    .line 48
    if-eqz p1, :cond_5

    .line 49
    .line 50
    iget-boolean p1, p0, Lk7/k;->g:Z

    .line 51
    .line 52
    move v7, p1

    .line 53
    goto :goto_2

    .line 54
    :cond_5
    move/from16 v7, p6

    .line 55
    .line 56
    :goto_2
    and-int/lit16 p1, v0, 0x80

    .line 57
    .line 58
    if-eqz p1, :cond_6

    .line 59
    .line 60
    iget-boolean p1, p0, Lk7/k;->h:Z

    .line 61
    .line 62
    move v8, p1

    .line 63
    goto :goto_3

    .line 64
    :cond_6
    move/from16 v8, p7

    .line 65
    .line 66
    :goto_3
    and-int/lit16 p1, v0, 0x100

    .line 67
    .line 68
    if-eqz p1, :cond_7

    .line 69
    .line 70
    iget p1, p0, Lk7/k;->i:I

    .line 71
    .line 72
    move v9, p1

    .line 73
    goto :goto_4

    .line 74
    :cond_7
    move/from16 v9, p8

    .line 75
    .line 76
    :goto_4
    and-int/lit16 p1, v0, 0x200

    .line 77
    .line 78
    if-eqz p1, :cond_8

    .line 79
    .line 80
    iget p1, p0, Lk7/k;->j:I

    .line 81
    .line 82
    move v10, p1

    .line 83
    goto :goto_5

    .line 84
    :cond_8
    move/from16 v10, p9

    .line 85
    .line 86
    :goto_5
    and-int/lit16 p1, v0, 0x400

    .line 87
    .line 88
    if-eqz p1, :cond_9

    .line 89
    .line 90
    iget p1, p0, Lk7/k;->k:I

    .line 91
    .line 92
    move v11, p1

    .line 93
    goto :goto_6

    .line 94
    :cond_9
    move/from16 v11, p10

    .line 95
    .line 96
    :goto_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    new-instance v0, Lk7/k;

    .line 100
    .line 101
    invoke-direct/range {v0 .. v11}, Lk7/k;-><init>(IIZZZZZZIII)V

    .line 102
    .line 103
    .line 104
    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lk7/k;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lk7/k;

    .line 12
    .line 13
    iget v1, p0, Lk7/k;->a:I

    .line 14
    .line 15
    iget v3, p1, Lk7/k;->a:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget v1, p0, Lk7/k;->b:I

    .line 21
    .line 22
    iget v3, p1, Lk7/k;->b:I

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget-boolean v1, p0, Lk7/k;->c:Z

    .line 28
    .line 29
    iget-boolean v3, p1, Lk7/k;->c:Z

    .line 30
    .line 31
    if-eq v1, v3, :cond_4

    .line 32
    .line 33
    return v2

    .line 34
    :cond_4
    iget-boolean v1, p0, Lk7/k;->d:Z

    .line 35
    .line 36
    iget-boolean v3, p1, Lk7/k;->d:Z

    .line 37
    .line 38
    if-eq v1, v3, :cond_5

    .line 39
    .line 40
    return v2

    .line 41
    :cond_5
    iget-boolean v1, p0, Lk7/k;->e:Z

    .line 42
    .line 43
    iget-boolean v3, p1, Lk7/k;->e:Z

    .line 44
    .line 45
    if-eq v1, v3, :cond_6

    .line 46
    .line 47
    return v2

    .line 48
    :cond_6
    iget-boolean v1, p0, Lk7/k;->f:Z

    .line 49
    .line 50
    iget-boolean v3, p1, Lk7/k;->f:Z

    .line 51
    .line 52
    if-eq v1, v3, :cond_7

    .line 53
    .line 54
    return v2

    .line 55
    :cond_7
    iget-boolean v1, p0, Lk7/k;->g:Z

    .line 56
    .line 57
    iget-boolean v3, p1, Lk7/k;->g:Z

    .line 58
    .line 59
    if-eq v1, v3, :cond_8

    .line 60
    .line 61
    return v2

    .line 62
    :cond_8
    iget-boolean v1, p0, Lk7/k;->h:Z

    .line 63
    .line 64
    iget-boolean v3, p1, Lk7/k;->h:Z

    .line 65
    .line 66
    if-eq v1, v3, :cond_9

    .line 67
    .line 68
    return v2

    .line 69
    :cond_9
    iget v1, p0, Lk7/k;->i:I

    .line 70
    .line 71
    iget v3, p1, Lk7/k;->i:I

    .line 72
    .line 73
    if-eq v1, v3, :cond_a

    .line 74
    .line 75
    return v2

    .line 76
    :cond_a
    iget v1, p0, Lk7/k;->j:I

    .line 77
    .line 78
    iget v3, p1, Lk7/k;->j:I

    .line 79
    .line 80
    if-eq v1, v3, :cond_b

    .line 81
    .line 82
    return v2

    .line 83
    :cond_b
    iget v1, p0, Lk7/k;->k:I

    .line 84
    .line 85
    iget p1, p1, Lk7/k;->k:I

    .line 86
    .line 87
    if-eq v1, p1, :cond_c

    .line 88
    .line 89
    return v2

    .line 90
    :cond_c
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Lk7/k;->a:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget v1, p0, Lk7/k;->b:I

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget-boolean v1, p0, Lk7/k;->c:Z

    .line 11
    .line 12
    const/16 v2, 0x4d5

    .line 13
    .line 14
    const/16 v3, 0x4cf

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const/16 v1, 0x4cf

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/16 v1, 0x4d5

    .line 22
    .line 23
    :goto_0
    add-int/2addr v0, v1

    .line 24
    mul-int/lit8 v0, v0, 0x1f

    .line 25
    .line 26
    iget-boolean v1, p0, Lk7/k;->d:Z

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    const/16 v1, 0x4cf

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/16 v1, 0x4d5

    .line 34
    .line 35
    :goto_1
    add-int/2addr v0, v1

    .line 36
    mul-int/lit8 v0, v0, 0x1f

    .line 37
    .line 38
    iget-boolean v1, p0, Lk7/k;->e:Z

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    const/16 v1, 0x4cf

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    const/16 v1, 0x4d5

    .line 46
    .line 47
    :goto_2
    add-int/2addr v0, v1

    .line 48
    mul-int/lit8 v0, v0, 0x1f

    .line 49
    .line 50
    iget-boolean v1, p0, Lk7/k;->f:Z

    .line 51
    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    const/16 v1, 0x4cf

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_3
    const/16 v1, 0x4d5

    .line 58
    .line 59
    :goto_3
    add-int/2addr v0, v1

    .line 60
    mul-int/lit8 v0, v0, 0x1f

    .line 61
    .line 62
    iget-boolean v1, p0, Lk7/k;->g:Z

    .line 63
    .line 64
    if-eqz v1, :cond_4

    .line 65
    .line 66
    const/16 v1, 0x4cf

    .line 67
    .line 68
    goto :goto_4

    .line 69
    :cond_4
    const/16 v1, 0x4d5

    .line 70
    .line 71
    :goto_4
    add-int/2addr v0, v1

    .line 72
    mul-int/lit8 v0, v0, 0x1f

    .line 73
    .line 74
    iget-boolean v1, p0, Lk7/k;->h:Z

    .line 75
    .line 76
    if-eqz v1, :cond_5

    .line 77
    .line 78
    const/16 v2, 0x4cf

    .line 79
    .line 80
    :cond_5
    add-int/2addr v0, v2

    .line 81
    mul-int/lit8 v0, v0, 0x1f

    .line 82
    .line 83
    iget v1, p0, Lk7/k;->i:I

    .line 84
    .line 85
    add-int/2addr v0, v1

    .line 86
    mul-int/lit8 v0, v0, 0x1f

    .line 87
    .line 88
    iget v1, p0, Lk7/k;->j:I

    .line 89
    .line 90
    add-int/2addr v0, v1

    .line 91
    mul-int/lit8 v0, v0, 0x1f

    .line 92
    .line 93
    iget v1, p0, Lk7/k;->k:I

    .line 94
    .line 95
    add-int/2addr v0, v1

    .line 96
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "AudioState(volumeMedia="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lk7/k;->a:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", cacheMedia="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lk7/k;->b:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", isOldVerMedia="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p0, Lk7/k;->c:Z

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", isOldVerTTS="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-boolean v1, p0, Lk7/k;->d:Z

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", isOldVerVR="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-boolean v1, p0, Lk7/k;->e:Z

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", focusMedia="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-boolean v1, p0, Lk7/k;->f:Z

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", focusTTS="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-boolean v1, p0, Lk7/k;->g:Z

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", focusVR="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-boolean v1, p0, Lk7/k;->h:Z

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", channelMedia="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget v1, p0, Lk7/k;->i:I

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", channelTTS="

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget v1, p0, Lk7/k;->j:I

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v1, ", channelVR="

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget v1, p0, Lk7/k;->k:I

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v1, ")"

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    return-object v0
.end method
