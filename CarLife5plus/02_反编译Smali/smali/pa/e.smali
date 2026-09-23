.class public final Lpa/e;
.super Lva/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final p:Lpa/e;

.field public static final q:Lpa/a;


# instance fields
.field public final a:Lva/d;

.field public b:I

.field public c:Lpa/d;

.field public d:J

.field public e:F

.field public f:D

.field public g:I

.field public h:I

.field public i:I

.field public j:Lpa/h;

.field public k:Ljava/util/List;

.field public l:I

.field public m:I

.field public n:B

.field public o:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lpa/a;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Lpa/a;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lpa/e;->q:Lpa/a;

    .line 8
    .line 9
    new-instance v0, Lpa/e;

    .line 10
    .line 11
    invoke-direct {v0}, Lpa/e;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lpa/e;->p:Lpa/e;

    .line 15
    .line 16
    invoke-virtual {v0}, Lpa/e;->g()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, Lpa/e;->n:B

    .line 3
    iput v0, p0, Lpa/e;->o:I

    .line 4
    sget-object v0, Lva/d;->a:Lva/t;

    iput-object v0, p0, Lpa/e;->a:Lva/d;

    return-void
.end method

.method public constructor <init>(Lpa/c;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lpa/e;->n:B

    .line 7
    iput v0, p0, Lpa/e;->o:I

    .line 8
    iget-object p1, p1, Lva/i;->a:Lva/d;

    .line 9
    iput-object p1, p0, Lpa/e;->a:Lva/d;

    return-void
.end method

.method public constructor <init>(Lva/e;Lva/g;)V
    .locals 12

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput-byte v0, p0, Lpa/e;->n:B

    .line 12
    iput v0, p0, Lpa/e;->o:I

    .line 13
    invoke-virtual {p0}, Lpa/e;->g()V

    .line 14
    new-instance v0, Lva/c;

    invoke-direct {v0}, Lva/c;-><init>()V

    const/4 v1, 0x1

    .line 15
    invoke-static {v0, v1}, Ld3/e;->s(Ljava/io/OutputStream;I)Ld3/e;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    const/16 v5, 0x100

    if-nez v3, :cond_6

    .line 16
    :try_start_0
    invoke-virtual {p1}, Lva/e;->n()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 17
    invoke-virtual {p1, v6, v2}, Lva/e;->q(ILd3/e;)Z

    move-result v5

    if-nez v5, :cond_0

    :sswitch_0
    const/4 v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :catch_1
    move-exception p1

    goto/16 :goto_3

    .line 18
    :sswitch_1
    iget v6, p0, Lpa/e;->b:I

    or-int/2addr v6, v5

    iput v6, p0, Lpa/e;->b:I

    .line 19
    invoke-virtual {p1}, Lva/e;->k()I

    move-result v6

    .line 20
    iput v6, p0, Lpa/e;->l:I

    goto :goto_0

    .line 21
    :sswitch_2
    iget v6, p0, Lpa/e;->b:I

    or-int/lit16 v6, v6, 0x200

    iput v6, p0, Lpa/e;->b:I

    .line 22
    invoke-virtual {p1}, Lva/e;->k()I

    move-result v6

    .line 23
    iput v6, p0, Lpa/e;->m:I

    goto :goto_0

    :sswitch_3
    and-int/lit16 v6, v4, 0x100

    if-eq v6, v5, :cond_1

    .line 24
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lpa/e;->k:Ljava/util/List;

    const/16 v4, 0x100

    .line 25
    :cond_1
    iget-object v6, p0, Lpa/e;->k:Ljava/util/List;

    sget-object v7, Lpa/e;->q:Lpa/a;

    invoke-virtual {p1, v7, p2}, Lva/e;->g(Lva/v;Lva/g;)Lva/a;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 26
    :sswitch_4
    iget v6, p0, Lpa/e;->b:I

    const/16 v7, 0x80

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_2

    .line 27
    iget-object v6, p0, Lpa/e;->j:Lpa/h;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    new-instance v8, Lpa/g;

    const/4 v9, 0x0

    .line 29
    invoke-direct {v8, v9}, Lpa/g;-><init>(I)V

    .line 30
    sget-object v9, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v9, v8, Lpa/g;->d:Ljava/util/List;

    .line 31
    invoke-virtual {v8, v6}, Lpa/g;->g(Lpa/h;)V

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 32
    :goto_1
    sget-object v6, Lpa/h;->h:Lpa/a;

    invoke-virtual {p1, v6, p2}, Lva/e;->g(Lva/v;Lva/g;)Lva/a;

    move-result-object v6

    check-cast v6, Lpa/h;

    iput-object v6, p0, Lpa/e;->j:Lpa/h;

    if-eqz v8, :cond_3

    .line 33
    invoke-virtual {v8, v6}, Lpa/g;->g(Lpa/h;)V

    .line 34
    invoke-virtual {v8}, Lpa/g;->d()Lpa/h;

    move-result-object v6

    iput-object v6, p0, Lpa/e;->j:Lpa/h;

    .line 35
    :cond_3
    iget v6, p0, Lpa/e;->b:I

    or-int/2addr v6, v7

    iput v6, p0, Lpa/e;->b:I

    goto/16 :goto_0

    .line 36
    :sswitch_5
    iget v6, p0, Lpa/e;->b:I

    or-int/lit8 v6, v6, 0x40

    iput v6, p0, Lpa/e;->b:I

    .line 37
    invoke-virtual {p1}, Lva/e;->k()I

    move-result v6

    .line 38
    iput v6, p0, Lpa/e;->i:I

    goto/16 :goto_0

    .line 39
    :sswitch_6
    iget v6, p0, Lpa/e;->b:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Lpa/e;->b:I

    .line 40
    invoke-virtual {p1}, Lva/e;->k()I

    move-result v6

    .line 41
    iput v6, p0, Lpa/e;->h:I

    goto/16 :goto_0

    .line 42
    :sswitch_7
    iget v6, p0, Lpa/e;->b:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Lpa/e;->b:I

    .line 43
    invoke-virtual {p1}, Lva/e;->k()I

    move-result v6

    .line 44
    iput v6, p0, Lpa/e;->g:I

    goto/16 :goto_0

    .line 45
    :sswitch_8
    iget v6, p0, Lpa/e;->b:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lpa/e;->b:I

    .line 46
    invoke-virtual {p1}, Lva/e;->j()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    .line 47
    iput-wide v6, p0, Lpa/e;->f:D

    goto/16 :goto_0

    .line 48
    :sswitch_9
    iget v6, p0, Lpa/e;->b:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lpa/e;->b:I

    .line 49
    invoke-virtual {p1}, Lva/e;->i()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    .line 50
    iput v6, p0, Lpa/e;->e:F

    goto/16 :goto_0

    .line 51
    :sswitch_a
    iget v6, p0, Lpa/e;->b:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lpa/e;->b:I

    .line 52
    invoke-virtual {p1}, Lva/e;->l()J

    move-result-wide v6

    ushr-long v8, v6, v1

    const-wide/16 v10, 0x1

    and-long/2addr v6, v10

    neg-long v6, v6

    xor-long/2addr v6, v8

    .line 53
    iput-wide v6, p0, Lpa/e;->d:J

    goto/16 :goto_0

    .line 54
    :sswitch_b
    invoke-virtual {p1}, Lva/e;->k()I

    move-result v7

    .line 55
    invoke-static {v7}, Lpa/d;->a(I)Lpa/d;

    move-result-object v8

    if-nez v8, :cond_4

    .line 56
    invoke-virtual {v2, v6}, Ld3/e;->J(I)V

    .line 57
    invoke-virtual {v2, v7}, Ld3/e;->J(I)V

    goto/16 :goto_0

    .line 58
    :cond_4
    iget v6, p0, Lpa/e;->b:I

    or-int/2addr v6, v1

    iput v6, p0, Lpa/e;->b:I

    .line 59
    iput-object v8, p0, Lpa/e;->c:Lpa/d;
    :try_end_0
    .catch Lva/q; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 60
    :goto_2
    :try_start_1
    new-instance p2, Lva/q;

    .line 61
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lva/q;-><init>(Ljava/lang/String;)V

    .line 62
    iput-object p0, p2, Lva/q;->a:Lva/a;

    .line 63
    throw p2

    .line 64
    :goto_3
    iput-object p0, p1, Lva/q;->a:Lva/a;

    .line 65
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    and-int/lit16 p2, v4, 0x100

    if-ne p2, v5, :cond_5

    .line 66
    iget-object p2, p0, Lpa/e;->k:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lpa/e;->k:Ljava/util/List;

    .line 67
    :cond_5
    :try_start_2
    invoke-virtual {v2}, Ld3/e;->k()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 68
    :catch_2
    invoke-virtual {v0}, Lva/c;->c()Lva/d;

    move-result-object p2

    iput-object p2, p0, Lpa/e;->a:Lva/d;

    goto :goto_5

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lva/c;->c()Lva/d;

    move-result-object p2

    iput-object p2, p0, Lpa/e;->a:Lva/d;

    .line 69
    throw p1

    .line 70
    :goto_5
    throw p1

    :cond_6
    and-int/lit16 p1, v4, 0x100

    if-ne p1, v5, :cond_7

    .line 71
    iget-object p1, p0, Lpa/e;->k:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lpa/e;->k:Ljava/util/List;

    .line 72
    :cond_7
    :try_start_3
    invoke-virtual {v2}, Ld3/e;->k()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 73
    :catch_3
    invoke-virtual {v0}, Lva/c;->c()Lva/d;

    move-result-object p1

    iput-object p1, p0, Lpa/e;->a:Lva/d;

    return-void

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lva/c;->c()Lva/d;

    move-result-object p2

    iput-object p2, p0, Lpa/e;->a:Lva/d;

    .line 74
    throw p1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_b
        0x10 -> :sswitch_a
        0x1d -> :sswitch_9
        0x21 -> :sswitch_8
        0x28 -> :sswitch_7
        0x30 -> :sswitch_6
        0x38 -> :sswitch_5
        0x42 -> :sswitch_4
        0x4a -> :sswitch_3
        0x50 -> :sswitch_2
        0x58 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public final a()I
    .locals 9

    .line 1
    iget v0, p0, Lpa/e;->o:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    iget v0, p0, Lpa/e;->b:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    and-int/2addr v0, v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lpa/e;->c:Lpa/d;

    .line 15
    .line 16
    iget v0, v0, Lpa/d;->a:I

    .line 17
    .line 18
    invoke-static {v1, v0}, Ld3/e;->c(II)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    :goto_0
    iget v3, p0, Lpa/e;->b:I

    .line 25
    .line 26
    const/4 v4, 0x2

    .line 27
    and-int/2addr v3, v4

    .line 28
    if-ne v3, v4, :cond_2

    .line 29
    .line 30
    iget-wide v5, p0, Lpa/e;->d:J

    .line 31
    .line 32
    invoke-static {v4}, Ld3/e;->j(I)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    shl-long v7, v5, v1

    .line 37
    .line 38
    const/16 v1, 0x3f

    .line 39
    .line 40
    shr-long v4, v5, v1

    .line 41
    .line 42
    xor-long/2addr v4, v7

    .line 43
    invoke-static {v4, v5}, Ld3/e;->i(J)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    add-int/2addr v1, v3

    .line 48
    add-int/2addr v0, v1

    .line 49
    :cond_2
    iget v1, p0, Lpa/e;->b:I

    .line 50
    .line 51
    const/4 v3, 0x4

    .line 52
    and-int/2addr v1, v3

    .line 53
    if-ne v1, v3, :cond_3

    .line 54
    .line 55
    const/4 v1, 0x3

    .line 56
    invoke-static {v1}, Ld3/e;->j(I)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    add-int/2addr v1, v3

    .line 61
    add-int/2addr v0, v1

    .line 62
    :cond_3
    iget v1, p0, Lpa/e;->b:I

    .line 63
    .line 64
    const/16 v4, 0x8

    .line 65
    .line 66
    and-int/2addr v1, v4

    .line 67
    if-ne v1, v4, :cond_4

    .line 68
    .line 69
    invoke-static {v3}, Ld3/e;->j(I)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    add-int/2addr v1, v4

    .line 74
    add-int/2addr v0, v1

    .line 75
    :cond_4
    iget v1, p0, Lpa/e;->b:I

    .line 76
    .line 77
    const/16 v3, 0x10

    .line 78
    .line 79
    and-int/2addr v1, v3

    .line 80
    if-ne v1, v3, :cond_5

    .line 81
    .line 82
    const/4 v1, 0x5

    .line 83
    iget v3, p0, Lpa/e;->g:I

    .line 84
    .line 85
    invoke-static {v1, v3}, Ld3/e;->d(II)I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    add-int/2addr v0, v1

    .line 90
    :cond_5
    iget v1, p0, Lpa/e;->b:I

    .line 91
    .line 92
    const/16 v3, 0x20

    .line 93
    .line 94
    and-int/2addr v1, v3

    .line 95
    if-ne v1, v3, :cond_6

    .line 96
    .line 97
    const/4 v1, 0x6

    .line 98
    iget v3, p0, Lpa/e;->h:I

    .line 99
    .line 100
    invoke-static {v1, v3}, Ld3/e;->d(II)I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    add-int/2addr v0, v1

    .line 105
    :cond_6
    iget v1, p0, Lpa/e;->b:I

    .line 106
    .line 107
    const/16 v3, 0x40

    .line 108
    .line 109
    and-int/2addr v1, v3

    .line 110
    if-ne v1, v3, :cond_7

    .line 111
    .line 112
    const/4 v1, 0x7

    .line 113
    iget v3, p0, Lpa/e;->i:I

    .line 114
    .line 115
    invoke-static {v1, v3}, Ld3/e;->d(II)I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    add-int/2addr v0, v1

    .line 120
    :cond_7
    iget v1, p0, Lpa/e;->b:I

    .line 121
    .line 122
    const/16 v3, 0x80

    .line 123
    .line 124
    and-int/2addr v1, v3

    .line 125
    if-ne v1, v3, :cond_8

    .line 126
    .line 127
    iget-object v1, p0, Lpa/e;->j:Lpa/h;

    .line 128
    .line 129
    invoke-static {v4, v1}, Ld3/e;->f(ILva/a;)I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    add-int/2addr v0, v1

    .line 134
    :cond_8
    :goto_1
    iget-object v1, p0, Lpa/e;->k:Ljava/util/List;

    .line 135
    .line 136
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-ge v2, v1, :cond_9

    .line 141
    .line 142
    iget-object v1, p0, Lpa/e;->k:Ljava/util/List;

    .line 143
    .line 144
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    check-cast v1, Lva/a;

    .line 149
    .line 150
    const/16 v3, 0x9

    .line 151
    .line 152
    invoke-static {v3, v1}, Ld3/e;->f(ILva/a;)I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    add-int/2addr v0, v1

    .line 157
    add-int/lit8 v2, v2, 0x1

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_9
    iget v1, p0, Lpa/e;->b:I

    .line 161
    .line 162
    const/16 v2, 0x200

    .line 163
    .line 164
    and-int/2addr v1, v2

    .line 165
    if-ne v1, v2, :cond_a

    .line 166
    .line 167
    const/16 v1, 0xa

    .line 168
    .line 169
    iget v2, p0, Lpa/e;->m:I

    .line 170
    .line 171
    invoke-static {v1, v2}, Ld3/e;->d(II)I

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    add-int/2addr v0, v1

    .line 176
    :cond_a
    iget v1, p0, Lpa/e;->b:I

    .line 177
    .line 178
    const/16 v2, 0x100

    .line 179
    .line 180
    and-int/2addr v1, v2

    .line 181
    if-ne v1, v2, :cond_b

    .line 182
    .line 183
    const/16 v1, 0xb

    .line 184
    .line 185
    iget v2, p0, Lpa/e;->l:I

    .line 186
    .line 187
    invoke-static {v1, v2}, Ld3/e;->d(II)I

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    add-int/2addr v0, v1

    .line 192
    :cond_b
    iget-object v1, p0, Lpa/e;->a:Lva/d;

    .line 193
    .line 194
    invoke-virtual {v1}, Lva/d;->size()I

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    add-int/2addr v1, v0

    .line 199
    iput v1, p0, Lpa/e;->o:I

    .line 200
    .line 201
    return v1
.end method

.method public final b()Lva/i;
    .locals 1

    .line 1
    invoke-static {}, Lpa/c;->e()Lpa/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final c()Lva/i;
    .locals 1

    .line 1
    invoke-static {}, Lpa/c;->e()Lpa/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lpa/c;->f(Lpa/e;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final d(Ld3/e;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lpa/e;->a()I

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lpa/e;->b:I

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    and-int/2addr v0, v1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lpa/e;->c:Lpa/d;

    .line 11
    .line 12
    iget v0, v0, Lpa/d;->a:I

    .line 13
    .line 14
    invoke-virtual {p1, v1, v0}, Ld3/e;->z(II)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget v0, p0, Lpa/e;->b:I

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    and-int/2addr v0, v2

    .line 21
    const/4 v3, 0x0

    .line 22
    if-ne v0, v2, :cond_1

    .line 23
    .line 24
    iget-wide v4, p0, Lpa/e;->d:J

    .line 25
    .line 26
    invoke-virtual {p1, v2, v3}, Ld3/e;->L(II)V

    .line 27
    .line 28
    .line 29
    shl-long v6, v4, v1

    .line 30
    .line 31
    const/16 v0, 0x3f

    .line 32
    .line 33
    shr-long/2addr v4, v0

    .line 34
    xor-long/2addr v4, v6

    .line 35
    invoke-virtual {p1, v4, v5}, Ld3/e;->K(J)V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget v0, p0, Lpa/e;->b:I

    .line 39
    .line 40
    const/4 v2, 0x4

    .line 41
    and-int/2addr v0, v2

    .line 42
    const/4 v4, 0x5

    .line 43
    if-ne v0, v2, :cond_2

    .line 44
    .line 45
    iget v0, p0, Lpa/e;->e:F

    .line 46
    .line 47
    const/4 v5, 0x3

    .line 48
    invoke-virtual {p1, v5, v4}, Ld3/e;->L(II)V

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-virtual {p1, v0}, Ld3/e;->H(I)V

    .line 56
    .line 57
    .line 58
    :cond_2
    iget v0, p0, Lpa/e;->b:I

    .line 59
    .line 60
    const/16 v5, 0x8

    .line 61
    .line 62
    and-int/2addr v0, v5

    .line 63
    if-ne v0, v5, :cond_3

    .line 64
    .line 65
    iget-wide v6, p0, Lpa/e;->f:D

    .line 66
    .line 67
    invoke-virtual {p1, v2, v1}, Ld3/e;->L(II)V

    .line 68
    .line 69
    .line 70
    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 71
    .line 72
    .line 73
    move-result-wide v0

    .line 74
    invoke-virtual {p1, v0, v1}, Ld3/e;->I(J)V

    .line 75
    .line 76
    .line 77
    :cond_3
    iget v0, p0, Lpa/e;->b:I

    .line 78
    .line 79
    const/16 v1, 0x10

    .line 80
    .line 81
    and-int/2addr v0, v1

    .line 82
    if-ne v0, v1, :cond_4

    .line 83
    .line 84
    iget v0, p0, Lpa/e;->g:I

    .line 85
    .line 86
    invoke-virtual {p1, v4, v0}, Ld3/e;->A(II)V

    .line 87
    .line 88
    .line 89
    :cond_4
    iget v0, p0, Lpa/e;->b:I

    .line 90
    .line 91
    const/16 v1, 0x20

    .line 92
    .line 93
    and-int/2addr v0, v1

    .line 94
    if-ne v0, v1, :cond_5

    .line 95
    .line 96
    const/4 v0, 0x6

    .line 97
    iget v1, p0, Lpa/e;->h:I

    .line 98
    .line 99
    invoke-virtual {p1, v0, v1}, Ld3/e;->A(II)V

    .line 100
    .line 101
    .line 102
    :cond_5
    iget v0, p0, Lpa/e;->b:I

    .line 103
    .line 104
    const/16 v1, 0x40

    .line 105
    .line 106
    and-int/2addr v0, v1

    .line 107
    if-ne v0, v1, :cond_6

    .line 108
    .line 109
    const/4 v0, 0x7

    .line 110
    iget v1, p0, Lpa/e;->i:I

    .line 111
    .line 112
    invoke-virtual {p1, v0, v1}, Ld3/e;->A(II)V

    .line 113
    .line 114
    .line 115
    :cond_6
    iget v0, p0, Lpa/e;->b:I

    .line 116
    .line 117
    const/16 v1, 0x80

    .line 118
    .line 119
    and-int/2addr v0, v1

    .line 120
    if-ne v0, v1, :cond_7

    .line 121
    .line 122
    iget-object v0, p0, Lpa/e;->j:Lpa/h;

    .line 123
    .line 124
    invoke-virtual {p1, v5, v0}, Ld3/e;->C(ILva/a;)V

    .line 125
    .line 126
    .line 127
    :cond_7
    :goto_0
    iget-object v0, p0, Lpa/e;->k:Ljava/util/List;

    .line 128
    .line 129
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-ge v3, v0, :cond_8

    .line 134
    .line 135
    iget-object v0, p0, Lpa/e;->k:Ljava/util/List;

    .line 136
    .line 137
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    check-cast v0, Lva/a;

    .line 142
    .line 143
    const/16 v1, 0x9

    .line 144
    .line 145
    invoke-virtual {p1, v1, v0}, Ld3/e;->C(ILva/a;)V

    .line 146
    .line 147
    .line 148
    add-int/lit8 v3, v3, 0x1

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_8
    iget v0, p0, Lpa/e;->b:I

    .line 152
    .line 153
    const/16 v1, 0x200

    .line 154
    .line 155
    and-int/2addr v0, v1

    .line 156
    if-ne v0, v1, :cond_9

    .line 157
    .line 158
    const/16 v0, 0xa

    .line 159
    .line 160
    iget v1, p0, Lpa/e;->m:I

    .line 161
    .line 162
    invoke-virtual {p1, v0, v1}, Ld3/e;->A(II)V

    .line 163
    .line 164
    .line 165
    :cond_9
    iget v0, p0, Lpa/e;->b:I

    .line 166
    .line 167
    const/16 v1, 0x100

    .line 168
    .line 169
    and-int/2addr v0, v1

    .line 170
    if-ne v0, v1, :cond_a

    .line 171
    .line 172
    const/16 v0, 0xb

    .line 173
    .line 174
    iget v1, p0, Lpa/e;->l:I

    .line 175
    .line 176
    invoke-virtual {p1, v0, v1}, Ld3/e;->A(II)V

    .line 177
    .line 178
    .line 179
    :cond_a
    iget-object v0, p0, Lpa/e;->a:Lva/d;

    .line 180
    .line 181
    invoke-virtual {p1, v0}, Ld3/e;->F(Lva/d;)V

    .line 182
    .line 183
    .line 184
    return-void
.end method

.method public final g()V
    .locals 2

    .line 1
    sget-object v0, Lpa/d;->b:Lpa/d;

    .line 2
    .line 3
    iput-object v0, p0, Lpa/e;->c:Lpa/d;

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    iput-wide v0, p0, Lpa/e;->d:J

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lpa/e;->e:F

    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    iput-wide v0, p0, Lpa/e;->f:D

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lpa/e;->g:I

    .line 18
    .line 19
    iput v0, p0, Lpa/e;->h:I

    .line 20
    .line 21
    iput v0, p0, Lpa/e;->i:I

    .line 22
    .line 23
    sget-object v1, Lpa/h;->g:Lpa/h;

    .line 24
    .line 25
    iput-object v1, p0, Lpa/e;->j:Lpa/h;

    .line 26
    .line 27
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 28
    .line 29
    iput-object v1, p0, Lpa/e;->k:Ljava/util/List;

    .line 30
    .line 31
    iput v0, p0, Lpa/e;->l:I

    .line 32
    .line 33
    iput v0, p0, Lpa/e;->m:I

    .line 34
    .line 35
    return-void
.end method

.method public final isInitialized()Z
    .locals 4

    .line 1
    iget-byte v0, p0, Lpa/e;->n:B

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v2, 0x0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    iget v0, p0, Lpa/e;->b:I

    .line 12
    .line 13
    const/16 v3, 0x80

    .line 14
    .line 15
    and-int/2addr v0, v3

    .line 16
    if-ne v0, v3, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lpa/e;->j:Lpa/h;

    .line 19
    .line 20
    invoke-virtual {v0}, Lpa/h;->isInitialized()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    iput-byte v2, p0, Lpa/e;->n:B

    .line 27
    .line 28
    return v2

    .line 29
    :cond_2
    const/4 v0, 0x0

    .line 30
    :goto_0
    iget-object v3, p0, Lpa/e;->k:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-ge v0, v3, :cond_4

    .line 37
    .line 38
    iget-object v3, p0, Lpa/e;->k:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Lpa/e;

    .line 45
    .line 46
    invoke-virtual {v3}, Lpa/e;->isInitialized()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-nez v3, :cond_3

    .line 51
    .line 52
    iput-byte v2, p0, Lpa/e;->n:B

    .line 53
    .line 54
    return v2

    .line 55
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_4
    iput-byte v1, p0, Lpa/e;->n:B

    .line 59
    .line 60
    return v1
.end method
