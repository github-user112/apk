.class public final Lx7/j;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final l:Ldc/l0;

.field public static final m:Ldc/l0;


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:I

.field public final g:Z

.field public final h:Ljava/lang/String;

.field public final i:Z

.field public final j:Z

.field public final k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lx7/j;

    .line 2
    .line 3
    sget-object v1, Ll8/d;->a:Lr8/o;

    .line 4
    .line 5
    const-string v1, "ROUNDED_CORNER"

    .line 6
    .line 7
    const/16 v2, 0x10

    .line 8
    .line 9
    invoke-static {v2, v1}, Ll8/d;->b(ILjava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const-string v2, "STATUS_SHOW"

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static {v2, v3}, Ll8/d;->a(Ljava/lang/String;Z)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    sget-object v4, Ll8/g;->a:Lr8/o;

    .line 21
    .line 22
    invoke-static {}, Ll8/g;->e()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    const-string v5, "STATUS_SIZE"

    .line 27
    .line 28
    invoke-static {v4, v5}, Ll8/d;->b(ILjava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    const-string v5, "STATUS_COLOR"

    .line 33
    .line 34
    const-string v6, "#00000000"

    .line 35
    .line 36
    invoke-static {v5, v6}, Ll8/d;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    const-string v7, "NAVIGATION_SHOW"

    .line 41
    .line 42
    invoke-static {v7, v3}, Ll8/d;->a(Ljava/lang/String;Z)Z

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    const-string v8, "NAVIGATION_SIZE"

    .line 47
    .line 48
    invoke-static {}, Ll8/g;->d()I

    .line 49
    .line 50
    .line 51
    move-result v9

    .line 52
    invoke-static {v9, v8}, Ll8/d;->b(ILjava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    const-string v9, "NAVIGATION_POSITION"

    .line 57
    .line 58
    invoke-static {v9, v3}, Ll8/d;->a(Ljava/lang/String;Z)Z

    .line 59
    .line 60
    .line 61
    move-result v9

    .line 62
    const-string v10, "NAVIGATION_COLOR"

    .line 63
    .line 64
    invoke-static {v10, v6}, Ll8/d;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    const-string v10, "FULL_SCREEN_HARMAN"

    .line 69
    .line 70
    invoke-static {v10, v3}, Ll8/d;->a(Ljava/lang/String;Z)Z

    .line 71
    .line 72
    .line 73
    move-result v10

    .line 74
    const-string v11, "FULL_SCREEN_HOZON"

    .line 75
    .line 76
    invoke-static {v11, v3}, Ll8/d;->a(Ljava/lang/String;Z)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    const-string v11, "IMMERSIVE_MODE"

    .line 81
    .line 82
    const/4 v12, 0x1

    .line 83
    invoke-static {v11, v12}, Ll8/d;->a(Ljava/lang/String;Z)Z

    .line 84
    .line 85
    .line 86
    move-result v11

    .line 87
    move v13, v10

    .line 88
    move v10, v3

    .line 89
    move v3, v4

    .line 90
    move-object v4, v5

    .line 91
    move v5, v7

    .line 92
    move v7, v9

    .line 93
    move v9, v13

    .line 94
    move v13, v8

    .line 95
    move-object v8, v6

    .line 96
    move v6, v13

    .line 97
    invoke-direct/range {v0 .. v11}, Lx7/j;-><init>(IZILjava/lang/String;ZIZLjava/lang/String;ZZZ)V

    .line 98
    .line 99
    .line 100
    invoke-static {v0}, Ldc/b0;->b(Ljava/lang/Object;)Ldc/l0;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    sput-object v0, Lx7/j;->l:Ldc/l0;

    .line 105
    .line 106
    sput-object v0, Lx7/j;->m:Ldc/l0;

    .line 107
    .line 108
    return-void
.end method

.method public constructor <init>(IZILjava/lang/String;ZIZLjava/lang/String;ZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lx7/j;->a:I

    .line 5
    .line 6
    iput-boolean p2, p0, Lx7/j;->b:Z

    .line 7
    .line 8
    iput p3, p0, Lx7/j;->c:I

    .line 9
    .line 10
    iput-object p4, p0, Lx7/j;->d:Ljava/lang/String;

    .line 11
    .line 12
    iput-boolean p5, p0, Lx7/j;->e:Z

    .line 13
    .line 14
    iput p6, p0, Lx7/j;->f:I

    .line 15
    .line 16
    iput-boolean p7, p0, Lx7/j;->g:Z

    .line 17
    .line 18
    iput-object p8, p0, Lx7/j;->h:Ljava/lang/String;

    .line 19
    .line 20
    iput-boolean p9, p0, Lx7/j;->i:Z

    .line 21
    .line 22
    iput-boolean p10, p0, Lx7/j;->j:Z

    .line 23
    .line 24
    iput-boolean p11, p0, Lx7/j;->k:Z

    .line 25
    .line 26
    return-void
.end method

.method public static a(Lx7/j;IZILjava/lang/String;ZIZLjava/lang/String;ZZZI)Lx7/j;
    .locals 12

    .line 1
    move/from16 v0, p12

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget p1, p0, Lx7/j;->a:I

    .line 8
    .line 9
    :cond_0
    move v1, p1

    .line 10
    and-int/lit8 p1, v0, 0x2

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget-boolean p2, p0, Lx7/j;->b:Z

    .line 15
    .line 16
    :cond_1
    move v2, p2

    .line 17
    and-int/lit8 p1, v0, 0x4

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    iget p3, p0, Lx7/j;->c:I

    .line 22
    .line 23
    :cond_2
    move v3, p3

    .line 24
    and-int/lit8 p1, v0, 0x8

    .line 25
    .line 26
    if-eqz p1, :cond_3

    .line 27
    .line 28
    iget-object p1, p0, Lx7/j;->d:Ljava/lang/String;

    .line 29
    .line 30
    move-object v4, p1

    .line 31
    goto :goto_0

    .line 32
    :cond_3
    move-object/from16 v4, p4

    .line 33
    .line 34
    :goto_0
    and-int/lit8 p1, v0, 0x10

    .line 35
    .line 36
    if-eqz p1, :cond_4

    .line 37
    .line 38
    iget-boolean p1, p0, Lx7/j;->e:Z

    .line 39
    .line 40
    move v5, p1

    .line 41
    goto :goto_1

    .line 42
    :cond_4
    move/from16 v5, p5

    .line 43
    .line 44
    :goto_1
    and-int/lit8 p1, v0, 0x20

    .line 45
    .line 46
    if-eqz p1, :cond_5

    .line 47
    .line 48
    iget p1, p0, Lx7/j;->f:I

    .line 49
    .line 50
    move v6, p1

    .line 51
    goto :goto_2

    .line 52
    :cond_5
    move/from16 v6, p6

    .line 53
    .line 54
    :goto_2
    and-int/lit8 p1, v0, 0x40

    .line 55
    .line 56
    if-eqz p1, :cond_6

    .line 57
    .line 58
    iget-boolean p1, p0, Lx7/j;->g:Z

    .line 59
    .line 60
    move v7, p1

    .line 61
    goto :goto_3

    .line 62
    :cond_6
    move/from16 v7, p7

    .line 63
    .line 64
    :goto_3
    and-int/lit16 p1, v0, 0x80

    .line 65
    .line 66
    if-eqz p1, :cond_7

    .line 67
    .line 68
    iget-object p1, p0, Lx7/j;->h:Ljava/lang/String;

    .line 69
    .line 70
    move-object v8, p1

    .line 71
    goto :goto_4

    .line 72
    :cond_7
    move-object/from16 v8, p8

    .line 73
    .line 74
    :goto_4
    and-int/lit16 p1, v0, 0x100

    .line 75
    .line 76
    if-eqz p1, :cond_8

    .line 77
    .line 78
    iget-boolean p1, p0, Lx7/j;->i:Z

    .line 79
    .line 80
    move v9, p1

    .line 81
    goto :goto_5

    .line 82
    :cond_8
    move/from16 v9, p9

    .line 83
    .line 84
    :goto_5
    and-int/lit16 p1, v0, 0x200

    .line 85
    .line 86
    if-eqz p1, :cond_9

    .line 87
    .line 88
    iget-boolean p1, p0, Lx7/j;->j:Z

    .line 89
    .line 90
    move v10, p1

    .line 91
    goto :goto_6

    .line 92
    :cond_9
    move/from16 v10, p10

    .line 93
    .line 94
    :goto_6
    and-int/lit16 p1, v0, 0x400

    .line 95
    .line 96
    if-eqz p1, :cond_a

    .line 97
    .line 98
    iget-boolean p1, p0, Lx7/j;->k:Z

    .line 99
    .line 100
    move v11, p1

    .line 101
    goto :goto_7

    .line 102
    :cond_a
    move/from16 v11, p11

    .line 103
    .line 104
    :goto_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    const-string p0, "statusColor"

    .line 108
    .line 109
    invoke-static {v4, p0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const-string p0, "navigationColor"

    .line 113
    .line 114
    invoke-static {v8, p0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    new-instance v0, Lx7/j;

    .line 118
    .line 119
    invoke-direct/range {v0 .. v11}, Lx7/j;-><init>(IZILjava/lang/String;ZIZLjava/lang/String;ZZZ)V

    .line 120
    .line 121
    .line 122
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
    instance-of v1, p1, Lx7/j;

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
    check-cast p1, Lx7/j;

    .line 12
    .line 13
    iget v1, p0, Lx7/j;->a:I

    .line 14
    .line 15
    iget v3, p1, Lx7/j;->a:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-boolean v1, p0, Lx7/j;->b:Z

    .line 21
    .line 22
    iget-boolean v3, p1, Lx7/j;->b:Z

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget v1, p0, Lx7/j;->c:I

    .line 28
    .line 29
    iget v3, p1, Lx7/j;->c:I

    .line 30
    .line 31
    if-eq v1, v3, :cond_4

    .line 32
    .line 33
    return v2

    .line 34
    :cond_4
    iget-object v1, p0, Lx7/j;->d:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v3, p1, Lx7/j;->d:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v1, v3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_5

    .line 43
    .line 44
    return v2

    .line 45
    :cond_5
    iget-boolean v1, p0, Lx7/j;->e:Z

    .line 46
    .line 47
    iget-boolean v3, p1, Lx7/j;->e:Z

    .line 48
    .line 49
    if-eq v1, v3, :cond_6

    .line 50
    .line 51
    return v2

    .line 52
    :cond_6
    iget v1, p0, Lx7/j;->f:I

    .line 53
    .line 54
    iget v3, p1, Lx7/j;->f:I

    .line 55
    .line 56
    if-eq v1, v3, :cond_7

    .line 57
    .line 58
    return v2

    .line 59
    :cond_7
    iget-boolean v1, p0, Lx7/j;->g:Z

    .line 60
    .line 61
    iget-boolean v3, p1, Lx7/j;->g:Z

    .line 62
    .line 63
    if-eq v1, v3, :cond_8

    .line 64
    .line 65
    return v2

    .line 66
    :cond_8
    iget-object v1, p0, Lx7/j;->h:Ljava/lang/String;

    .line 67
    .line 68
    iget-object v3, p1, Lx7/j;->h:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {v1, v3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-nez v1, :cond_9

    .line 75
    .line 76
    return v2

    .line 77
    :cond_9
    iget-boolean v1, p0, Lx7/j;->i:Z

    .line 78
    .line 79
    iget-boolean v3, p1, Lx7/j;->i:Z

    .line 80
    .line 81
    if-eq v1, v3, :cond_a

    .line 82
    .line 83
    return v2

    .line 84
    :cond_a
    iget-boolean v1, p0, Lx7/j;->j:Z

    .line 85
    .line 86
    iget-boolean v3, p1, Lx7/j;->j:Z

    .line 87
    .line 88
    if-eq v1, v3, :cond_b

    .line 89
    .line 90
    return v2

    .line 91
    :cond_b
    iget-boolean v1, p0, Lx7/j;->k:Z

    .line 92
    .line 93
    iget-boolean p1, p1, Lx7/j;->k:Z

    .line 94
    .line 95
    if-eq v1, p1, :cond_c

    .line 96
    .line 97
    return v2

    .line 98
    :cond_c
    return v0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget v0, p0, Lx7/j;->a:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    mul-int/lit8 v0, v0, 0x1f

    .line 6
    .line 7
    iget-boolean v2, p0, Lx7/j;->b:Z

    .line 8
    .line 9
    const/16 v3, 0x4d5

    .line 10
    .line 11
    const/16 v4, 0x4cf

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    const/16 v2, 0x4cf

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/16 v2, 0x4d5

    .line 19
    .line 20
    :goto_0
    add-int/2addr v0, v2

    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget v2, p0, Lx7/j;->c:I

    .line 24
    .line 25
    add-int/2addr v0, v2

    .line 26
    mul-int/lit8 v0, v0, 0x1f

    .line 27
    .line 28
    iget-object v2, p0, Lx7/j;->d:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v2, v0, v1}, Lp9/v;->k(Ljava/lang/String;II)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget-boolean v2, p0, Lx7/j;->e:Z

    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    const/16 v2, 0x4cf

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/16 v2, 0x4d5

    .line 42
    .line 43
    :goto_1
    add-int/2addr v0, v2

    .line 44
    mul-int/lit8 v0, v0, 0x1f

    .line 45
    .line 46
    iget v2, p0, Lx7/j;->f:I

    .line 47
    .line 48
    add-int/2addr v0, v2

    .line 49
    mul-int/lit8 v0, v0, 0x1f

    .line 50
    .line 51
    iget-boolean v2, p0, Lx7/j;->g:Z

    .line 52
    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    const/16 v2, 0x4cf

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    const/16 v2, 0x4d5

    .line 59
    .line 60
    :goto_2
    add-int/2addr v0, v2

    .line 61
    mul-int/lit8 v0, v0, 0x1f

    .line 62
    .line 63
    iget-object v2, p0, Lx7/j;->h:Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {v2, v0, v1}, Lp9/v;->k(Ljava/lang/String;II)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    iget-boolean v2, p0, Lx7/j;->i:Z

    .line 70
    .line 71
    if-eqz v2, :cond_3

    .line 72
    .line 73
    const/16 v2, 0x4cf

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_3
    const/16 v2, 0x4d5

    .line 77
    .line 78
    :goto_3
    add-int/2addr v0, v2

    .line 79
    mul-int/lit8 v0, v0, 0x1f

    .line 80
    .line 81
    iget-boolean v2, p0, Lx7/j;->j:Z

    .line 82
    .line 83
    if-eqz v2, :cond_4

    .line 84
    .line 85
    const/16 v2, 0x4cf

    .line 86
    .line 87
    goto :goto_4

    .line 88
    :cond_4
    const/16 v2, 0x4d5

    .line 89
    .line 90
    :goto_4
    add-int/2addr v0, v2

    .line 91
    mul-int/lit8 v0, v0, 0x1f

    .line 92
    .line 93
    iget-boolean v1, p0, Lx7/j;->k:Z

    .line 94
    .line 95
    if-eqz v1, :cond_5

    .line 96
    .line 97
    const/16 v3, 0x4cf

    .line 98
    .line 99
    :cond_5
    add-int/2addr v0, v3

    .line 100
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SystemState(roundedCorner="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lx7/j;->a:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", statusShow="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Lx7/j;->b:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", statusSize="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lx7/j;->c:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", statusColor="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lx7/j;->d:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", navigationShow="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-boolean v1, p0, Lx7/j;->e:Z

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", navigationSize="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v1, p0, Lx7/j;->f:I

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", navigationPosition="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-boolean v1, p0, Lx7/j;->g:Z

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", navigationColor="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lx7/j;->h:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", fullHarman="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-boolean v1, p0, Lx7/j;->i:Z

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", fullHozon="

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-boolean v1, p0, Lx7/j;->j:Z

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v1, ", immersiveMode="

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-boolean v1, p0, Lx7/j;->k:Z

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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
