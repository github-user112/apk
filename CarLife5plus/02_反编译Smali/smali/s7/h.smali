.class public final Ls7/h;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final n:Ldc/l0;

.field public static final o:Ldc/l0;


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:I

.field public final j:Z

.field public final k:I

.field public final l:I

.field public final m:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Ls7/h;

    .line 2
    .line 3
    sget-object v1, Ll8/d;->a:Lr8/o;

    .line 4
    .line 5
    const-string v1, "TIME_SWITCH"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {v1, v2}, Ll8/d;->a(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const-string v3, "TIME_ALIGNMENT"

    .line 13
    .line 14
    invoke-static {v2, v3}, Ll8/d;->b(ILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const-string v3, "TIME_BACKGROUND_COLOR"

    .line 19
    .line 20
    const-string v4, "#80000000"

    .line 21
    .line 22
    invoke-static {v3, v4}, Ll8/d;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const-string v4, "TIME_ROUNDED_CORNER"

    .line 27
    .line 28
    const/16 v5, 0x10

    .line 29
    .line 30
    invoke-static {v5, v4}, Ll8/d;->b(ILjava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    const-string v6, "TIME_MARGIN_VERTICAL"

    .line 35
    .line 36
    const/16 v7, 0x1a

    .line 37
    .line 38
    invoke-static {v7, v6}, Ll8/d;->b(ILjava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    const-string v8, "TIME_MARGIN_HORIZONTAL"

    .line 43
    .line 44
    invoke-static {v7, v8}, Ll8/d;->b(ILjava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    const-string v8, "TIME_FORMAT"

    .line 49
    .line 50
    const-string v9, "hh:mm \u2022 EEE|yyyy/MM/dd"

    .line 51
    .line 52
    invoke-static {v8, v9}, Ll8/d;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    const-string v9, "TIME_FONT_COLOR"

    .line 57
    .line 58
    const-string v10, "#FFFFFFFF"

    .line 59
    .line 60
    invoke-static {v9, v10}, Ll8/d;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v9

    .line 64
    const-string v10, "TIME_FONT_SIZE"

    .line 65
    .line 66
    const/16 v11, 0x1e

    .line 67
    .line 68
    invoke-static {v11, v10}, Ll8/d;->b(ILjava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v10

    .line 72
    const-string v12, "TIME_FONT_WEIGHT"

    .line 73
    .line 74
    const/4 v13, 0x1

    .line 75
    invoke-static {v12, v13}, Ll8/d;->a(Ljava/lang/String;Z)Z

    .line 76
    .line 77
    .line 78
    move-result v12

    .line 79
    const-string v13, "TIME_LINE_HEIGHT"

    .line 80
    .line 81
    invoke-static {v11, v13}, Ll8/d;->b(ILjava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result v11

    .line 85
    const-string v13, "TIME_PADDING_VERTICAL"

    .line 86
    .line 87
    const/16 v14, 0xa

    .line 88
    .line 89
    invoke-static {v14, v13}, Ll8/d;->b(ILjava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v13

    .line 93
    const-string v14, "TIME_PADDING_HORIZONTAL"

    .line 94
    .line 95
    invoke-static {v5, v14}, Ll8/d;->b(ILjava/lang/String;)I

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    move v15, v13

    .line 100
    move v13, v5

    .line 101
    move v5, v6

    .line 102
    move v6, v7

    .line 103
    move-object v7, v8

    .line 104
    move-object v8, v9

    .line 105
    move v9, v10

    .line 106
    move v10, v12

    .line 107
    move v12, v15

    .line 108
    invoke-direct/range {v0 .. v13}, Ls7/h;-><init>(ZILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;IZIII)V

    .line 109
    .line 110
    .line 111
    invoke-static {v0}, Ldc/b0;->b(Ljava/lang/Object;)Ldc/l0;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    sput-object v0, Ls7/h;->n:Ldc/l0;

    .line 116
    .line 117
    sput-object v0, Ls7/h;->o:Ldc/l0;

    .line 118
    .line 119
    return-void
.end method

.method public constructor <init>(ZILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;IZIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Ls7/h;->a:Z

    .line 5
    .line 6
    iput p2, p0, Ls7/h;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Ls7/h;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput p4, p0, Ls7/h;->d:I

    .line 11
    .line 12
    iput p5, p0, Ls7/h;->e:I

    .line 13
    .line 14
    iput p6, p0, Ls7/h;->f:I

    .line 15
    .line 16
    iput-object p7, p0, Ls7/h;->g:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p8, p0, Ls7/h;->h:Ljava/lang/String;

    .line 19
    .line 20
    iput p9, p0, Ls7/h;->i:I

    .line 21
    .line 22
    iput-boolean p10, p0, Ls7/h;->j:Z

    .line 23
    .line 24
    iput p11, p0, Ls7/h;->k:I

    .line 25
    .line 26
    iput p12, p0, Ls7/h;->l:I

    .line 27
    .line 28
    iput p13, p0, Ls7/h;->m:I

    .line 29
    .line 30
    return-void
.end method

.method public static a(Ls7/h;ZILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;IZIIII)Ls7/h;
    .locals 14

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    iget-boolean p1, p0, Ls7/h;->a:Z

    :cond_0
    move v1, p1

    and-int/lit8 p1, v0, 0x2

    if-eqz p1, :cond_1

    iget p1, p0, Ls7/h;->b:I

    move v2, p1

    goto :goto_0

    :cond_1
    move/from16 v2, p2

    :goto_0
    and-int/lit8 p1, v0, 0x4

    if-eqz p1, :cond_2

    iget-object p1, p0, Ls7/h;->c:Ljava/lang/String;

    move-object v3, p1

    goto :goto_1

    :cond_2
    move-object/from16 v3, p3

    :goto_1
    and-int/lit8 p1, v0, 0x8

    if-eqz p1, :cond_3

    iget p1, p0, Ls7/h;->d:I

    move v4, p1

    goto :goto_2

    :cond_3
    move/from16 v4, p4

    :goto_2
    and-int/lit8 p1, v0, 0x10

    if-eqz p1, :cond_4

    iget p1, p0, Ls7/h;->e:I

    move v5, p1

    goto :goto_3

    :cond_4
    move/from16 v5, p5

    :goto_3
    and-int/lit8 p1, v0, 0x20

    if-eqz p1, :cond_5

    iget p1, p0, Ls7/h;->f:I

    move v6, p1

    goto :goto_4

    :cond_5
    move/from16 v6, p6

    :goto_4
    and-int/lit8 p1, v0, 0x40

    if-eqz p1, :cond_6

    iget-object p1, p0, Ls7/h;->g:Ljava/lang/String;

    move-object v7, p1

    goto :goto_5

    :cond_6
    move-object/from16 v7, p7

    :goto_5
    and-int/lit16 p1, v0, 0x80

    if-eqz p1, :cond_7

    iget-object p1, p0, Ls7/h;->h:Ljava/lang/String;

    move-object v8, p1

    goto :goto_6

    :cond_7
    move-object/from16 v8, p8

    :goto_6
    and-int/lit16 p1, v0, 0x100

    if-eqz p1, :cond_8

    iget p1, p0, Ls7/h;->i:I

    move v9, p1

    goto :goto_7

    :cond_8
    move/from16 v9, p9

    :goto_7
    and-int/lit16 p1, v0, 0x200

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Ls7/h;->j:Z

    move v10, p1

    goto :goto_8

    :cond_9
    move/from16 v10, p10

    :goto_8
    and-int/lit16 p1, v0, 0x400

    if-eqz p1, :cond_a

    iget p1, p0, Ls7/h;->k:I

    move v11, p1

    goto :goto_9

    :cond_a
    move/from16 v11, p11

    :goto_9
    and-int/lit16 p1, v0, 0x800

    if-eqz p1, :cond_b

    iget p1, p0, Ls7/h;->l:I

    move v12, p1

    goto :goto_a

    :cond_b
    move/from16 v12, p12

    :goto_a
    and-int/lit16 p1, v0, 0x1000

    if-eqz p1, :cond_c

    iget p1, p0, Ls7/h;->m:I

    move v13, p1

    goto :goto_b

    :cond_c
    move/from16 v13, p13

    :goto_b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    const-string p0, "backgroundColor"

    invoke-static {v3, p0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "format"

    invoke-static {v7, p0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "fontColor"

    invoke-static {v8, p0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ls7/h;

    invoke-direct/range {v0 .. v13}, Ls7/h;-><init>(ZILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;IZIII)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Ls7/h;

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_1
    check-cast p1, Ls7/h;

    .line 12
    .line 13
    iget-boolean v1, p0, Ls7/h;->a:Z

    .line 14
    .line 15
    iget-boolean v2, p1, Ls7/h;->a:Z

    .line 16
    .line 17
    if-eq v1, v2, :cond_2

    .line 18
    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :cond_2
    iget v1, p0, Ls7/h;->b:I

    .line 22
    .line 23
    iget v2, p1, Ls7/h;->b:I

    .line 24
    .line 25
    if-eq v1, v2, :cond_3

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_3
    iget-object v1, p0, Ls7/h;->c:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v2, p1, Ls7/h;->c:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v1, v2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_4

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_4
    iget v1, p0, Ls7/h;->d:I

    .line 40
    .line 41
    iget v2, p1, Ls7/h;->d:I

    .line 42
    .line 43
    if-eq v1, v2, :cond_5

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_5
    iget v1, p0, Ls7/h;->e:I

    .line 47
    .line 48
    iget v2, p1, Ls7/h;->e:I

    .line 49
    .line 50
    if-eq v1, v2, :cond_6

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_6
    iget v1, p0, Ls7/h;->f:I

    .line 54
    .line 55
    iget v2, p1, Ls7/h;->f:I

    .line 56
    .line 57
    if-eq v1, v2, :cond_7

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_7
    iget-object v1, p0, Ls7/h;->g:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v2, p1, Ls7/h;->g:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v1, v2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-nez v1, :cond_8

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_8
    iget-object v1, p0, Ls7/h;->h:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v2, p1, Ls7/h;->h:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {v1, v2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-nez v1, :cond_9

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_9
    iget v1, p0, Ls7/h;->i:I

    .line 83
    .line 84
    iget v2, p1, Ls7/h;->i:I

    .line 85
    .line 86
    if-eq v1, v2, :cond_a

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_a
    iget-boolean v1, p0, Ls7/h;->j:Z

    .line 90
    .line 91
    iget-boolean v2, p1, Ls7/h;->j:Z

    .line 92
    .line 93
    if-eq v1, v2, :cond_b

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_b
    iget v1, p0, Ls7/h;->k:I

    .line 97
    .line 98
    iget v2, p1, Ls7/h;->k:I

    .line 99
    .line 100
    if-eq v1, v2, :cond_c

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_c
    iget v1, p0, Ls7/h;->l:I

    .line 104
    .line 105
    iget v2, p1, Ls7/h;->l:I

    .line 106
    .line 107
    if-eq v1, v2, :cond_d

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_d
    iget v1, p0, Ls7/h;->m:I

    .line 111
    .line 112
    iget p1, p1, Ls7/h;->m:I

    .line 113
    .line 114
    if-eq v1, p1, :cond_e

    .line 115
    .line 116
    :goto_0
    const/4 p1, 0x0

    .line 117
    return p1

    .line 118
    :cond_e
    return v0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-boolean v0, p0, Ls7/h;->a:Z

    .line 2
    .line 3
    const/16 v1, 0x4d5

    .line 4
    .line 5
    const/16 v2, 0x4cf

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/16 v0, 0x4cf

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/16 v0, 0x4d5

    .line 13
    .line 14
    :goto_0
    const/16 v3, 0x1f

    .line 15
    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget v4, p0, Ls7/h;->b:I

    .line 19
    .line 20
    add-int/2addr v0, v4

    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget-object v4, p0, Ls7/h;->c:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v4, v0, v3}, Lp9/v;->k(Ljava/lang/String;II)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget v4, p0, Ls7/h;->d:I

    .line 30
    .line 31
    add-int/2addr v0, v4

    .line 32
    mul-int/lit8 v0, v0, 0x1f

    .line 33
    .line 34
    iget v4, p0, Ls7/h;->e:I

    .line 35
    .line 36
    add-int/2addr v0, v4

    .line 37
    mul-int/lit8 v0, v0, 0x1f

    .line 38
    .line 39
    iget v4, p0, Ls7/h;->f:I

    .line 40
    .line 41
    add-int/2addr v0, v4

    .line 42
    mul-int/lit8 v0, v0, 0x1f

    .line 43
    .line 44
    iget-object v4, p0, Ls7/h;->g:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v4, v0, v3}, Lp9/v;->k(Ljava/lang/String;II)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iget-object v4, p0, Ls7/h;->h:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {v4, v0, v3}, Lp9/v;->k(Ljava/lang/String;II)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    iget v4, p0, Ls7/h;->i:I

    .line 57
    .line 58
    add-int/2addr v0, v4

    .line 59
    mul-int/lit8 v0, v0, 0x1f

    .line 60
    .line 61
    iget-boolean v4, p0, Ls7/h;->j:Z

    .line 62
    .line 63
    if-eqz v4, :cond_1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    const/16 v2, 0x4d5

    .line 67
    .line 68
    :goto_1
    add-int/2addr v0, v2

    .line 69
    mul-int/lit8 v0, v0, 0x1f

    .line 70
    .line 71
    iget v2, p0, Ls7/h;->k:I

    .line 72
    .line 73
    add-int/2addr v0, v2

    .line 74
    mul-int/lit8 v0, v0, 0x1f

    .line 75
    .line 76
    iget v2, p0, Ls7/h;->l:I

    .line 77
    .line 78
    add-int/2addr v0, v2

    .line 79
    mul-int/lit8 v0, v0, 0x1f

    .line 80
    .line 81
    iget v2, p0, Ls7/h;->m:I

    .line 82
    .line 83
    add-int/2addr v0, v2

    .line 84
    mul-int/lit8 v0, v0, 0x1f

    .line 85
    .line 86
    add-int/2addr v0, v1

    .line 87
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "FloatTimeState(switch="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Ls7/h;->a:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", alignment="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Ls7/h;->b:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", backgroundColor="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Ls7/h;->c:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", roundedCorner="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Ls7/h;->d:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", marginVertical="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Ls7/h;->e:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", marginHorizontal="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v1, p0, Ls7/h;->f:I

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", format="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Ls7/h;->g:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", fontColor="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Ls7/h;->h:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", fontSize="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget v1, p0, Ls7/h;->i:I

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", fontWeight="

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-boolean v1, p0, Ls7/h;->j:Z

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v1, ", lineHeight="

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget v1, p0, Ls7/h;->k:I

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v1, ", paddingVertical="

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget v1, p0, Ls7/h;->l:I

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v1, ", paddingHorizontal="

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget v1, p0, Ls7/h;->m:I

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v1, ", showDialog=false)"

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    return-object v0
.end method
