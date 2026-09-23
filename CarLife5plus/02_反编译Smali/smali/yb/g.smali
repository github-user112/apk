.class public final Lyb/g;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lyb/h;


# instance fields
.field public final a:J

.field public final b:I


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p2, p0, Lyb/g;->a:J

    .line 5
    .line 6
    iput p1, p0, Lyb/g;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final toInstant()Lyb/d;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lyb/d;->c:Lyb/d;

    .line 4
    .line 5
    sget-object v1, Lyb/d;->c:Lyb/d;

    .line 6
    .line 7
    iget-wide v2, v1, Lyb/d;->a:J

    .line 8
    .line 9
    iget-wide v4, v0, Lyb/g;->a:J

    .line 10
    .line 11
    cmp-long v6, v4, v2

    .line 12
    .line 13
    if-ltz v6, :cond_5

    .line 14
    .line 15
    sget-object v2, Lyb/d;->d:Lyb/d;

    .line 16
    .line 17
    iget-wide v6, v2, Lyb/d;->a:J

    .line 18
    .line 19
    cmp-long v3, v4, v6

    .line 20
    .line 21
    if-gtz v3, :cond_5

    .line 22
    .line 23
    iget v3, v0, Lyb/g;->b:I

    .line 24
    .line 25
    int-to-long v6, v3

    .line 26
    const-wide/32 v8, 0x3b9aca00

    .line 27
    .line 28
    .line 29
    div-long v10, v6, v8

    .line 30
    .line 31
    xor-long v12, v6, v8

    .line 32
    .line 33
    const-wide/16 v14, 0x0

    .line 34
    .line 35
    cmp-long v3, v12, v14

    .line 36
    .line 37
    if-gez v3, :cond_0

    .line 38
    .line 39
    mul-long v12, v10, v8

    .line 40
    .line 41
    cmp-long v3, v12, v6

    .line 42
    .line 43
    if-eqz v3, :cond_0

    .line 44
    .line 45
    const-wide/16 v12, -0x1

    .line 46
    .line 47
    add-long/2addr v10, v12

    .line 48
    :cond_0
    add-long v12, v4, v10

    .line 49
    .line 50
    xor-long v16, v4, v12

    .line 51
    .line 52
    cmp-long v3, v16, v14

    .line 53
    .line 54
    if-gez v3, :cond_1

    .line 55
    .line 56
    xor-long/2addr v10, v4

    .line 57
    cmp-long v3, v10, v14

    .line 58
    .line 59
    if-ltz v3, :cond_1

    .line 60
    .line 61
    cmp-long v3, v4, v14

    .line 62
    .line 63
    if-lez v3, :cond_2

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    const-wide v3, -0x701cefeb9bec00L

    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    cmp-long v5, v12, v3

    .line 72
    .line 73
    if-gez v5, :cond_3

    .line 74
    .line 75
    :cond_2
    return-object v1

    .line 76
    :cond_3
    const-wide v3, 0x701cd2fa9578ffL

    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    cmp-long v1, v12, v3

    .line 82
    .line 83
    if-lez v1, :cond_4

    .line 84
    .line 85
    :goto_0
    return-object v2

    .line 86
    :cond_4
    rem-long/2addr v6, v8

    .line 87
    xor-long v1, v6, v8

    .line 88
    .line 89
    neg-long v3, v6

    .line 90
    or-long/2addr v3, v6

    .line 91
    and-long/2addr v1, v3

    .line 92
    const/16 v3, 0x3f

    .line 93
    .line 94
    shr-long/2addr v1, v3

    .line 95
    and-long/2addr v1, v8

    .line 96
    add-long/2addr v6, v1

    .line 97
    long-to-int v1, v6

    .line 98
    new-instance v2, Lyb/d;

    .line 99
    .line 100
    invoke-direct {v2, v1, v12, v13}, Lyb/d;-><init>(IJ)V

    .line 101
    .line 102
    .line 103
    return-object v2

    .line 104
    :cond_5
    new-instance v1, Lyb/e;

    .line 105
    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v3, "The parsed date is outside the range representable by Instant (Unix epoch second "

    .line 109
    .line 110
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const/16 v3, 0x29

    .line 117
    .line 118
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-direct {v1, v2}, Lyb/e;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw v1
.end method
