.class public final Lg0/d;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lh0/o;


# instance fields
.field public final a:Lg0/u;


# direct methods
.method public constructor <init>(Lg0/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lg0/d;->a:Lg0/u;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lg0/d;->a:Lg0/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Lg0/u;->g()Lg0/m;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v0, v0, Lg0/m;->p:I

    .line 8
    .line 9
    return v0
.end method

.method public final b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lg0/d;->a:Lg0/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Lg0/u;->g()Lg0/m;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lg0/m;->m:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {v0}, Ls8/p;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lg0/n;

    .line 14
    .line 15
    iget v0, v0, Lg0/n;->a:I

    .line 16
    .line 17
    return v0
.end method

.method public final c()I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lg0/d;->a:Lg0/u;

    .line 4
    .line 5
    invoke-virtual {v1}, Lg0/u;->g()Lg0/m;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v2, v2, Lg0/m;->m:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    return v3

    .line 19
    :cond_0
    invoke-virtual {v1}, Lg0/u;->g()Lg0/m;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object v4, v2, Lg0/m;->q:Lz/w0;

    .line 24
    .line 25
    const/16 v5, 0x20

    .line 26
    .line 27
    const-wide v6, 0xffffffffL

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    sget-object v8, Lz/w0;->a:Lz/w0;

    .line 33
    .line 34
    if-ne v4, v8, :cond_1

    .line 35
    .line 36
    invoke-virtual {v2}, Lg0/m;->e()J

    .line 37
    .line 38
    .line 39
    move-result-wide v9

    .line 40
    and-long/2addr v9, v6

    .line 41
    :goto_0
    long-to-int v2, v9

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    invoke-virtual {v2}, Lg0/m;->e()J

    .line 44
    .line 45
    .line 46
    move-result-wide v9

    .line 47
    shr-long/2addr v9, v5

    .line 48
    goto :goto_0

    .line 49
    :goto_1
    invoke-virtual {v1}, Lg0/u;->g()Lg0/m;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iget-object v4, v1, Lg0/m;->q:Lz/w0;

    .line 54
    .line 55
    const/4 v9, 0x1

    .line 56
    if-ne v4, v8, :cond_2

    .line 57
    .line 58
    const/4 v4, 0x1

    .line 59
    goto :goto_2

    .line 60
    :cond_2
    const/4 v4, 0x0

    .line 61
    :goto_2
    iget-object v8, v1, Lg0/m;->m:Ljava/lang/Object;

    .line 62
    .line 63
    const/4 v10, 0x0

    .line 64
    const/4 v11, 0x0

    .line 65
    const/4 v12, 0x0

    .line 66
    :goto_3
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 67
    .line 68
    .line 69
    move-result v13

    .line 70
    if-ge v10, v13, :cond_6

    .line 71
    .line 72
    invoke-static {v4, v1, v10}, Lm9/e0;->J0(ZLg0/m;I)I

    .line 73
    .line 74
    .line 75
    move-result v13

    .line 76
    const/4 v14, -0x1

    .line 77
    if-ne v13, v14, :cond_3

    .line 78
    .line 79
    add-int/lit8 v10, v10, 0x1

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_3
    const/4 v14, 0x0

    .line 83
    :goto_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 84
    .line 85
    .line 86
    move-result v15

    .line 87
    if-ge v10, v15, :cond_5

    .line 88
    .line 89
    invoke-static {v4, v1, v10}, Lm9/e0;->J0(ZLg0/m;I)I

    .line 90
    .line 91
    .line 92
    move-result v15

    .line 93
    if-ne v15, v13, :cond_5

    .line 94
    .line 95
    if-eqz v4, :cond_4

    .line 96
    .line 97
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v15

    .line 101
    check-cast v15, Lg0/n;

    .line 102
    .line 103
    move/from16 v16, v4

    .line 104
    .line 105
    iget-wide v3, v15, Lg0/n;->n:J

    .line 106
    .line 107
    and-long/2addr v3, v6

    .line 108
    :goto_5
    long-to-int v4, v3

    .line 109
    goto :goto_6

    .line 110
    :cond_4
    move/from16 v16, v4

    .line 111
    .line 112
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    check-cast v3, Lg0/n;

    .line 117
    .line 118
    iget-wide v3, v3, Lg0/n;->n:J

    .line 119
    .line 120
    shr-long/2addr v3, v5

    .line 121
    goto :goto_5

    .line 122
    :goto_6
    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    .line 123
    .line 124
    .line 125
    move-result v14

    .line 126
    add-int/lit8 v10, v10, 0x1

    .line 127
    .line 128
    move/from16 v4, v16

    .line 129
    .line 130
    const/4 v3, 0x0

    .line 131
    goto :goto_4

    .line 132
    :cond_5
    move/from16 v16, v4

    .line 133
    .line 134
    add-int/2addr v11, v14

    .line 135
    add-int/lit8 v12, v12, 0x1

    .line 136
    .line 137
    move/from16 v4, v16

    .line 138
    .line 139
    const/4 v3, 0x0

    .line 140
    goto :goto_3

    .line 141
    :cond_6
    div-int/2addr v11, v12

    .line 142
    iget v1, v1, Lg0/m;->s:I

    .line 143
    .line 144
    add-int/2addr v11, v1

    .line 145
    if-nez v11, :cond_7

    .line 146
    .line 147
    goto :goto_7

    .line 148
    :cond_7
    div-int/2addr v2, v11

    .line 149
    if-ge v2, v9, :cond_8

    .line 150
    .line 151
    :goto_7
    return v9

    .line 152
    :cond_8
    return v2
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lg0/d;->a:Lg0/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Lg0/u;->g()Lg0/m;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lg0/m;->m:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    xor-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    return v0
.end method

.method public final e()I
    .locals 1

    .line 1
    iget-object v0, p0, Lg0/d;->a:Lg0/u;

    .line 2
    .line 3
    iget-object v0, v0, Lg0/u;->d:Lf0/p;

    .line 4
    .line 5
    iget-object v0, v0, Lf0/p;->b:Lf1/h1;

    .line 6
    .line 7
    invoke-virtual {v0}, Lf1/h1;->f()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method
