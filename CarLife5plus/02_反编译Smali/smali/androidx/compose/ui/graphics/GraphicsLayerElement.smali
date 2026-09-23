.class final Landroidx/compose/ui/graphics/GraphicsLayerElement;
.super Lq2/z0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lq2/z0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0082\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/GraphicsLayerElement;",
        "Lq2/z0;",
        "Ly1/m0;",
        "ui_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:J

.field public final e:Ly1/l0;

.field public final f:Z

.field public final g:J

.field public final h:J


# direct methods
.method public constructor <init>(FFFJLy1/l0;ZJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->a:F

    .line 5
    .line 6
    iput p2, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->b:F

    .line 7
    .line 8
    iput p3, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->c:F

    .line 9
    .line 10
    iput-wide p4, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->d:J

    .line 11
    .line 12
    iput-object p6, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->e:Ly1/l0;

    .line 13
    .line 14
    iput-boolean p7, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->f:Z

    .line 15
    .line 16
    iput-wide p8, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->g:J

    .line 17
    .line 18
    iput-wide p10, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->h:J

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto/16 :goto_1

    .line 4
    .line 5
    :cond_0
    instance-of v0, p1, Landroidx/compose/ui/graphics/GraphicsLayerElement;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    goto/16 :goto_0

    .line 11
    .line 12
    :cond_1
    check-cast p1, Landroidx/compose/ui/graphics/GraphicsLayerElement;

    .line 13
    .line 14
    const/high16 v0, 0x3f800000    # 1.0f

    .line 15
    .line 16
    invoke-static {v0, v0}, Ljava/lang/Float;->compare(FF)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :cond_2
    invoke-static {v0, v0}, Ljava/lang/Float;->compare(FF)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    goto/16 :goto_0

    .line 31
    .line 32
    :cond_3
    iget v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->a:F

    .line 33
    .line 34
    iget v2, p1, Landroidx/compose/ui/graphics/GraphicsLayerElement;->a:F

    .line 35
    .line 36
    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    goto/16 :goto_0

    .line 43
    .line 44
    :cond_4
    const/4 v0, 0x0

    .line 45
    invoke-static {v0, v0}, Ljava/lang/Float;->compare(FF)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_5

    .line 50
    .line 51
    goto/16 :goto_0

    .line 52
    .line 53
    :cond_5
    invoke-static {v0, v0}, Ljava/lang/Float;->compare(FF)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_6

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_6
    iget v2, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->b:F

    .line 61
    .line 62
    iget v3, p1, Landroidx/compose/ui/graphics/GraphicsLayerElement;->b:F

    .line 63
    .line 64
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_7

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_7
    invoke-static {v0, v0}, Ljava/lang/Float;->compare(FF)I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_8

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_8
    invoke-static {v0, v0}, Ljava/lang/Float;->compare(FF)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_9

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_9
    iget v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->c:F

    .line 86
    .line 87
    iget v2, p1, Landroidx/compose/ui/graphics/GraphicsLayerElement;->c:F

    .line 88
    .line 89
    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_a

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_a
    const/high16 v0, 0x41000000    # 8.0f

    .line 97
    .line 98
    invoke-static {v0, v0}, Ljava/lang/Float;->compare(FF)I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_b

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_b
    iget-wide v2, p1, Landroidx/compose/ui/graphics/GraphicsLayerElement;->d:J

    .line 106
    .line 107
    sget v0, Ly1/p0;->b:I

    .line 108
    .line 109
    iget-wide v4, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->d:J

    .line 110
    .line 111
    cmp-long v0, v4, v2

    .line 112
    .line 113
    if-nez v0, :cond_10

    .line 114
    .line 115
    iget-object v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->e:Ly1/l0;

    .line 116
    .line 117
    iget-object v2, p1, Landroidx/compose/ui/graphics/GraphicsLayerElement;->e:Ly1/l0;

    .line 118
    .line 119
    invoke-static {v0, v2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-nez v0, :cond_c

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_c
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->f:Z

    .line 127
    .line 128
    iget-boolean v2, p1, Landroidx/compose/ui/graphics/GraphicsLayerElement;->f:Z

    .line 129
    .line 130
    if-eq v0, v2, :cond_d

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_d
    iget-wide v2, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->g:J

    .line 134
    .line 135
    iget-wide v4, p1, Landroidx/compose/ui/graphics/GraphicsLayerElement;->g:J

    .line 136
    .line 137
    invoke-static {v2, v3, v4, v5}, Ly1/q;->c(JJ)Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-nez v0, :cond_e

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_e
    iget-wide v2, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->h:J

    .line 145
    .line 146
    iget-wide v4, p1, Landroidx/compose/ui/graphics/GraphicsLayerElement;->h:J

    .line 147
    .line 148
    invoke-static {v2, v3, v4, v5}, Ly1/q;->c(JJ)Z

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    if-nez p1, :cond_f

    .line 153
    .line 154
    :goto_0
    return v1

    .line 155
    :cond_f
    :goto_1
    const/4 p1, 0x1

    .line 156
    return p1

    .line 157
    :cond_10
    return v1
.end method

.method public final hashCode()I
    .locals 7

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/16 v2, 0x1f

    .line 8
    .line 9
    mul-int/lit8 v1, v1, 0x1f

    .line 10
    .line 11
    invoke-static {v0, v1, v2}, Lp9/v;->i(FII)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->a:F

    .line 16
    .line 17
    invoke-static {v1, v0, v2}, Lp9/v;->i(FII)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-static {v1, v0, v2}, Lp9/v;->i(FII)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-static {v1, v0, v2}, Lp9/v;->i(FII)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget v3, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->b:F

    .line 31
    .line 32
    invoke-static {v3, v0, v2}, Lp9/v;->i(FII)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-static {v1, v0, v2}, Lp9/v;->i(FII)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-static {v1, v0, v2}, Lp9/v;->i(FII)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->c:F

    .line 45
    .line 46
    invoke-static {v1, v0, v2}, Lp9/v;->i(FII)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    const/high16 v1, 0x41000000    # 8.0f

    .line 51
    .line 52
    invoke-static {v1, v0, v2}, Lp9/v;->i(FII)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    sget v1, Ly1/p0;->b:I

    .line 57
    .line 58
    const/16 v1, 0x20

    .line 59
    .line 60
    iget-wide v3, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->d:J

    .line 61
    .line 62
    ushr-long v5, v3, v1

    .line 63
    .line 64
    xor-long/2addr v3, v5

    .line 65
    long-to-int v1, v3

    .line 66
    add-int/2addr v0, v1

    .line 67
    mul-int/lit8 v0, v0, 0x1f

    .line 68
    .line 69
    iget-object v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->e:Ly1/l0;

    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    add-int/2addr v1, v0

    .line 76
    mul-int/lit8 v1, v1, 0x1f

    .line 77
    .line 78
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->f:Z

    .line 79
    .line 80
    if-eqz v0, :cond_0

    .line 81
    .line 82
    const/16 v0, 0x4cf

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    const/16 v0, 0x4d5

    .line 86
    .line 87
    :goto_0
    add-int/2addr v1, v0

    .line 88
    mul-int/lit16 v1, v1, 0x3c1

    .line 89
    .line 90
    sget v0, Ly1/q;->n:I

    .line 91
    .line 92
    iget-wide v3, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->g:J

    .line 93
    .line 94
    invoke-static {v1, v2, v3, v4}, Lp9/v;->j(IIJ)I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    iget-wide v3, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->h:J

    .line 99
    .line 100
    invoke-static {v3, v4}, Lr8/u;->a(J)I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    add-int/2addr v1, v0

    .line 105
    mul-int/lit16 v1, v1, 0x3c1

    .line 106
    .line 107
    add-int/lit8 v1, v1, 0x3

    .line 108
    .line 109
    mul-int/lit8 v1, v1, 0x1f

    .line 110
    .line 111
    return v1
.end method

.method public final i()Lr1/o;
    .locals 3

    .line 1
    new-instance v0, Ly1/m0;

    .line 2
    .line 3
    invoke-direct {v0}, Lr1/o;-><init>()V

    .line 4
    .line 5
    .line 6
    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    .line 8
    iput v1, v0, Ly1/m0;->o:F

    .line 9
    .line 10
    iput v1, v0, Ly1/m0;->p:F

    .line 11
    .line 12
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->a:F

    .line 13
    .line 14
    iput v1, v0, Ly1/m0;->q:F

    .line 15
    .line 16
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->b:F

    .line 17
    .line 18
    iput v1, v0, Ly1/m0;->r:F

    .line 19
    .line 20
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->c:F

    .line 21
    .line 22
    iput v1, v0, Ly1/m0;->s:F

    .line 23
    .line 24
    const/high16 v1, 0x41000000    # 8.0f

    .line 25
    .line 26
    iput v1, v0, Ly1/m0;->t:F

    .line 27
    .line 28
    iget-wide v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->d:J

    .line 29
    .line 30
    iput-wide v1, v0, Ly1/m0;->u:J

    .line 31
    .line 32
    iget-object v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->e:Ly1/l0;

    .line 33
    .line 34
    iput-object v1, v0, Ly1/m0;->v:Ly1/l0;

    .line 35
    .line 36
    iget-boolean v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->f:Z

    .line 37
    .line 38
    iput-boolean v1, v0, Ly1/m0;->w:Z

    .line 39
    .line 40
    iget-wide v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->g:J

    .line 41
    .line 42
    iput-wide v1, v0, Ly1/m0;->x:J

    .line 43
    .line 44
    iget-wide v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->h:J

    .line 45
    .line 46
    iput-wide v1, v0, Ly1/m0;->y:J

    .line 47
    .line 48
    const/4 v1, 0x3

    .line 49
    iput v1, v0, Ly1/m0;->z:I

    .line 50
    .line 51
    new-instance v1, Lb2/a;

    .line 52
    .line 53
    const/16 v2, 0x16

    .line 54
    .line 55
    invoke-direct {v1, v2, v0}, Lb2/a;-><init>(ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iput-object v1, v0, Ly1/m0;->A:Lb2/a;

    .line 59
    .line 60
    return-object v0
.end method

.method public final j(Lr1/o;)V
    .locals 2

    .line 1
    check-cast p1, Ly1/m0;

    .line 2
    .line 3
    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    .line 5
    iput v0, p1, Ly1/m0;->o:F

    .line 6
    .line 7
    iput v0, p1, Ly1/m0;->p:F

    .line 8
    .line 9
    iget v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->a:F

    .line 10
    .line 11
    iput v0, p1, Ly1/m0;->q:F

    .line 12
    .line 13
    iget v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->b:F

    .line 14
    .line 15
    iput v0, p1, Ly1/m0;->r:F

    .line 16
    .line 17
    iget v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->c:F

    .line 18
    .line 19
    iput v0, p1, Ly1/m0;->s:F

    .line 20
    .line 21
    const/high16 v0, 0x41000000    # 8.0f

    .line 22
    .line 23
    iput v0, p1, Ly1/m0;->t:F

    .line 24
    .line 25
    iget-wide v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->d:J

    .line 26
    .line 27
    iput-wide v0, p1, Ly1/m0;->u:J

    .line 28
    .line 29
    iget-object v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->e:Ly1/l0;

    .line 30
    .line 31
    iput-object v0, p1, Ly1/m0;->v:Ly1/l0;

    .line 32
    .line 33
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->f:Z

    .line 34
    .line 35
    iput-boolean v0, p1, Ly1/m0;->w:Z

    .line 36
    .line 37
    iget-wide v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->g:J

    .line 38
    .line 39
    iput-wide v0, p1, Ly1/m0;->x:J

    .line 40
    .line 41
    iget-wide v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->h:J

    .line 42
    .line 43
    iput-wide v0, p1, Ly1/m0;->y:J

    .line 44
    .line 45
    const/4 v0, 0x3

    .line 46
    iput v0, p1, Ly1/m0;->z:I

    .line 47
    .line 48
    const/4 v0, 0x2

    .line 49
    invoke-static {p1, v0}, Lq2/f;->t(Lq2/l;I)Lq2/h1;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v0, v0, Lq2/h1;->p:Lq2/h1;

    .line 54
    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    iget-object p1, p1, Ly1/m0;->A:Lb2/a;

    .line 58
    .line 59
    const/4 v1, 0x1

    .line 60
    invoke-virtual {v0, p1, v1}, Lq2/h1;->d1(Lf9/k;Z)V

    .line 61
    .line 62
    .line 63
    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "GraphicsLayerElement(scaleX=1.0, scaleY=1.0, alpha="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->a:F

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", translationX=0.0, translationY=0.0, shadowElevation="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->b:F

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", rotationX=0.0, rotationY=0.0, rotationZ="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->c:F

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", cameraDistance=8.0, transformOrigin="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    sget v1, Ly1/p0;->b:I

    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v2, "TransformOrigin(packedValue="

    .line 43
    .line 44
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-wide v2, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->d:J

    .line 48
    .line 49
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const/16 v2, 0x29

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, ", shape="

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->e:Ly1/l0;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v1, ", clip="

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-boolean v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->f:Z

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v1, ", renderEffect=null, ambientShadowColor="

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-wide v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->g:J

    .line 90
    .line 91
    const-string v3, ", spotShadowColor="

    .line 92
    .line 93
    invoke-static {v1, v2, v0, v3}, Lp9/v;->v(JLjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-wide v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->h:J

    .line 97
    .line 98
    invoke-static {v1, v2}, Ly1/q;->i(J)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v1, ", compositingStrategy=CompositingStrategy(value=0), blendMode="

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const/4 v1, 0x3

    .line 111
    invoke-static {v1}, Ly1/h0;->H(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v1, ", colorFilter=null)"

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    return-object v0
.end method
