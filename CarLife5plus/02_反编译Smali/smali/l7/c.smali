.class public final Ll7/c;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public d:J


# direct methods
.method public synthetic constructor <init>(III)V
    .locals 6

    const-wide/16 v4, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Ll7/c;-><init>(IIIJ)V

    return-void
.end method

.method public constructor <init>(IIIJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Ll7/c;->a:I

    .line 4
    iput p2, p0, Ll7/c;->b:I

    .line 5
    iput p3, p0, Ll7/c;->c:I

    .line 6
    iput-wide p4, p0, Ll7/c;->d:J

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 7

    .line 1
    const/16 v0, 0x1f40

    .line 2
    .line 3
    iget v1, p0, Ll7/c;->a:I

    .line 4
    .line 5
    if-gt v0, v1, :cond_0

    .line 6
    .line 7
    const/16 v0, 0x3e81

    .line 8
    .line 9
    if-ge v1, v0, :cond_0

    .line 10
    .line 11
    const/16 v0, 0x4000

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/16 v0, 0x3e80

    .line 15
    .line 16
    if-gt v0, v1, :cond_1

    .line 17
    .line 18
    const/16 v0, 0x7d01

    .line 19
    .line 20
    if-ge v1, v0, :cond_1

    .line 21
    .line 22
    const v0, 0x8000

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/high16 v0, 0x10000

    .line 27
    .line 28
    :goto_0
    iget v2, p0, Ll7/c;->b:I

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    if-ne v2, v3, :cond_2

    .line 32
    .line 33
    const/4 v2, 0x4

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    const/16 v2, 0xc

    .line 36
    .line 37
    :goto_1
    iget v4, p0, Ll7/c;->c:I

    .line 38
    .line 39
    const/16 v5, 0x10

    .line 40
    .line 41
    const/4 v6, 0x2

    .line 42
    if-ne v4, v5, :cond_3

    .line 43
    .line 44
    const/4 v4, 0x2

    .line 45
    goto :goto_2

    .line 46
    :cond_3
    const/4 v4, 0x3

    .line 47
    :goto_2
    invoke-static {v1, v2, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    if-lez v1, :cond_4

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_4
    const/4 v2, 0x0

    .line 59
    :goto_3
    if-eqz v2, :cond_5

    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    goto :goto_4

    .line 66
    :cond_5
    sget-object v1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 67
    .line 68
    new-array v2, v3, [Ljava/lang/Object;

    .line 69
    .line 70
    const-string v3, "getMinBufferSize \u8fd4\u56de\u975e\u6cd5\u503c\uff0c\u4f7f\u7528\u9ed8\u8ba4\u7f13\u51b2\u533a\u5927\u5c0f"

    .line 71
    .line 72
    const/4 v4, 0x0

    .line 73
    aput-object v3, v2, v4

    .line 74
    .line 75
    const-string v3, "CarLife_SDK"

    .line 76
    .line 77
    invoke-virtual {v1, v3, v2}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :goto_4
    mul-int/lit8 v0, v0, 0x2

    .line 81
    .line 82
    const/high16 v1, 0x100000

    .line 83
    .line 84
    if-le v0, v1, :cond_6

    .line 85
    .line 86
    return v1

    .line 87
    :cond_6
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Ll7/c;

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
    check-cast p1, Ll7/c;

    .line 12
    .line 13
    iget v1, p0, Ll7/c;->a:I

    .line 14
    .line 15
    iget v3, p1, Ll7/c;->a:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget v1, p0, Ll7/c;->b:I

    .line 21
    .line 22
    iget v3, p1, Ll7/c;->b:I

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget v1, p0, Ll7/c;->c:I

    .line 28
    .line 29
    iget v3, p1, Ll7/c;->c:I

    .line 30
    .line 31
    if-eq v1, v3, :cond_4

    .line 32
    .line 33
    return v2

    .line 34
    :cond_4
    iget-wide v3, p0, Ll7/c;->d:J

    .line 35
    .line 36
    iget-wide v5, p1, Ll7/c;->d:J

    .line 37
    .line 38
    cmp-long p1, v3, v5

    .line 39
    .line 40
    if-eqz p1, :cond_5

    .line 41
    .line 42
    return v2

    .line 43
    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget v0, p0, Ll7/c;->a:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget v1, p0, Ll7/c;->b:I

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget v1, p0, Ll7/c;->c:I

    .line 11
    .line 12
    add-int/2addr v0, v1

    .line 13
    mul-int/lit8 v0, v0, 0x1f

    .line 14
    .line 15
    iget-wide v1, p0, Ll7/c;->d:J

    .line 16
    .line 17
    const/16 v3, 0x20

    .line 18
    .line 19
    ushr-long v3, v1, v3

    .line 20
    .line 21
    xor-long/2addr v1, v3

    .line 22
    long-to-int v2, v1

    .line 23
    add-int/2addr v0, v2

    .line 24
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-wide v0, p0, Ll7/c;->d:J

    .line 2
    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v3, "AudioParams(sampleRate="

    .line 6
    .line 7
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget v3, p0, Ll7/c;->a:I

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v3, ", channelCount="

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget v3, p0, Ll7/c;->b:I

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v3, ", bitDepth="

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget v3, p0, Ll7/c;->c:I

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v3, ", duration="

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v0, ")"

    .line 44
    .line 45
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    return-object v0
.end method
