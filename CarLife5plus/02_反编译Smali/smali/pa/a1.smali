.class public final Lpa/a1;
.super Lva/k;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final l:Lpa/a1;

.field public static final m:Lpa/a;


# instance fields
.field public final b:Lva/d;

.field public c:I

.field public d:I

.field public e:I

.field public f:Lpa/s0;

.field public g:I

.field public h:Lpa/s0;

.field public i:I

.field public j:B

.field public k:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lpa/a;

    .line 2
    .line 3
    const/16 v1, 0x16

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lpa/a;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lpa/a1;->m:Lpa/a;

    .line 9
    .line 10
    new-instance v0, Lpa/a1;

    .line 11
    .line 12
    invoke-direct {v0}, Lpa/a1;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lpa/a1;->l:Lpa/a1;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput v1, v0, Lpa/a1;->d:I

    .line 19
    .line 20
    iput v1, v0, Lpa/a1;->e:I

    .line 21
    .line 22
    sget-object v2, Lpa/s0;->t:Lpa/s0;

    .line 23
    .line 24
    iput-object v2, v0, Lpa/a1;->f:Lpa/s0;

    .line 25
    .line 26
    iput v1, v0, Lpa/a1;->g:I

    .line 27
    .line 28
    iput-object v2, v0, Lpa/a1;->h:Lpa/s0;

    .line 29
    .line 30
    iput v1, v0, Lpa/a1;->i:I

    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lva/k;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Lpa/a1;->j:B

    .line 8
    iput v0, p0, Lpa/a1;->k:I

    .line 9
    sget-object v0, Lva/d;->a:Lva/t;

    iput-object v0, p0, Lpa/a1;->b:Lva/d;

    return-void
.end method

.method public constructor <init>(Lpa/z0;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lva/k;-><init>(Lva/j;)V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, Lpa/a1;->j:B

    .line 3
    iput v0, p0, Lpa/a1;->k:I

    .line 4
    iget-object p1, p1, Lva/i;->a:Lva/d;

    .line 5
    iput-object p1, p0, Lpa/a1;->b:Lva/d;

    return-void
.end method

.method public constructor <init>(Lva/e;Lva/g;)V
    .locals 9

    .line 10
    invoke-direct {p0}, Lva/k;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput-byte v0, p0, Lpa/a1;->j:B

    .line 12
    iput v0, p0, Lpa/a1;->k:I

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lpa/a1;->d:I

    .line 14
    iput v0, p0, Lpa/a1;->e:I

    .line 15
    sget-object v1, Lpa/s0;->t:Lpa/s0;

    .line 16
    iput-object v1, p0, Lpa/a1;->f:Lpa/s0;

    .line 17
    iput v0, p0, Lpa/a1;->g:I

    .line 18
    iput-object v1, p0, Lpa/a1;->h:Lpa/s0;

    .line 19
    iput v0, p0, Lpa/a1;->i:I

    .line 20
    new-instance v1, Lva/c;

    invoke-direct {v1}, Lva/c;-><init>()V

    const/4 v2, 0x1

    .line 21
    invoke-static {v1, v2}, Ld3/e;->s(Ljava/io/OutputStream;I)Ld3/e;

    move-result-object v3

    :cond_0
    :goto_0
    if-nez v0, :cond_c

    .line 22
    :try_start_0
    invoke-virtual {p1}, Lva/e;->n()I

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0x8

    if-eq v4, v5, :cond_b

    const/16 v6, 0x10

    if-eq v4, v6, :cond_a

    const/16 v7, 0x1a

    const/4 v8, 0x0

    if-eq v4, v7, :cond_7

    const/16 v7, 0x22

    if-eq v4, v7, :cond_4

    const/16 v6, 0x28

    if-eq v4, v6, :cond_3

    const/16 v5, 0x30

    if-eq v4, v5, :cond_2

    .line 23
    invoke-virtual {p0, p1, v3, p2, v4}, Lva/k;->l(Lva/e;Ld3/e;Lva/g;I)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :catch_0
    move-exception p1

    goto/16 :goto_1

    :catch_1
    move-exception p1

    goto/16 :goto_2

    .line 24
    :cond_2
    iget v4, p0, Lpa/a1;->c:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lpa/a1;->c:I

    .line 25
    invoke-virtual {p1}, Lva/e;->k()I

    move-result v4

    .line 26
    iput v4, p0, Lpa/a1;->i:I

    goto :goto_0

    .line 27
    :cond_3
    iget v4, p0, Lpa/a1;->c:I

    or-int/2addr v4, v5

    iput v4, p0, Lpa/a1;->c:I

    .line 28
    invoke-virtual {p1}, Lva/e;->k()I

    move-result v4

    .line 29
    iput v4, p0, Lpa/a1;->g:I

    goto :goto_0

    .line 30
    :cond_4
    iget v4, p0, Lpa/a1;->c:I

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_5

    .line 31
    iget-object v4, p0, Lpa/a1;->h:Lpa/s0;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    invoke-static {v4}, Lpa/s0;->o(Lpa/s0;)Lpa/r0;

    move-result-object v8

    .line 33
    :cond_5
    sget-object v4, Lpa/s0;->u:Lpa/a;

    invoke-virtual {p1, v4, p2}, Lva/e;->g(Lva/v;Lva/g;)Lva/a;

    move-result-object v4

    check-cast v4, Lpa/s0;

    iput-object v4, p0, Lpa/a1;->h:Lpa/s0;

    if-eqz v8, :cond_6

    .line 34
    invoke-virtual {v8, v4}, Lpa/r0;->g(Lpa/s0;)Lpa/r0;

    .line 35
    invoke-virtual {v8}, Lpa/r0;->e()Lpa/s0;

    move-result-object v4

    iput-object v4, p0, Lpa/a1;->h:Lpa/s0;

    .line 36
    :cond_6
    iget v4, p0, Lpa/a1;->c:I

    or-int/2addr v4, v6

    iput v4, p0, Lpa/a1;->c:I

    goto :goto_0

    .line 37
    :cond_7
    iget v4, p0, Lpa/a1;->c:I

    const/4 v5, 0x4

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_8

    .line 38
    iget-object v4, p0, Lpa/a1;->f:Lpa/s0;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    invoke-static {v4}, Lpa/s0;->o(Lpa/s0;)Lpa/r0;

    move-result-object v8

    .line 40
    :cond_8
    sget-object v4, Lpa/s0;->u:Lpa/a;

    invoke-virtual {p1, v4, p2}, Lva/e;->g(Lva/v;Lva/g;)Lva/a;

    move-result-object v4

    check-cast v4, Lpa/s0;

    iput-object v4, p0, Lpa/a1;->f:Lpa/s0;

    if-eqz v8, :cond_9

    .line 41
    invoke-virtual {v8, v4}, Lpa/r0;->g(Lpa/s0;)Lpa/r0;

    .line 42
    invoke-virtual {v8}, Lpa/r0;->e()Lpa/s0;

    move-result-object v4

    iput-object v4, p0, Lpa/a1;->f:Lpa/s0;

    .line 43
    :cond_9
    iget v4, p0, Lpa/a1;->c:I

    or-int/2addr v4, v5

    iput v4, p0, Lpa/a1;->c:I

    goto/16 :goto_0

    .line 44
    :cond_a
    iget v4, p0, Lpa/a1;->c:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lpa/a1;->c:I

    .line 45
    invoke-virtual {p1}, Lva/e;->k()I

    move-result v4

    .line 46
    iput v4, p0, Lpa/a1;->e:I

    goto/16 :goto_0

    .line 47
    :cond_b
    iget v4, p0, Lpa/a1;->c:I

    or-int/2addr v4, v2

    iput v4, p0, Lpa/a1;->c:I

    .line 48
    invoke-virtual {p1}, Lva/e;->k()I

    move-result v4

    .line 49
    iput v4, p0, Lpa/a1;->d:I
    :try_end_0
    .catch Lva/q; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 50
    :goto_1
    :try_start_1
    new-instance p2, Lva/q;

    .line 51
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lva/q;-><init>(Ljava/lang/String;)V

    .line 52
    iput-object p0, p2, Lva/q;->a:Lva/a;

    .line 53
    throw p2

    .line 54
    :goto_2
    iput-object p0, p1, Lva/q;->a:Lva/a;

    .line 55
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    :goto_3
    :try_start_2
    invoke-virtual {v3}, Ld3/e;->k()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 57
    :catch_2
    invoke-virtual {v1}, Lva/c;->c()Lva/d;

    move-result-object p2

    iput-object p2, p0, Lpa/a1;->b:Lva/d;

    goto :goto_4

    :catchall_1
    move-exception p1

    invoke-virtual {v1}, Lva/c;->c()Lva/d;

    move-result-object p2

    iput-object p2, p0, Lpa/a1;->b:Lva/d;

    .line 58
    throw p1

    .line 59
    :goto_4
    invoke-virtual {p0}, Lva/k;->k()V

    .line 60
    throw p1

    .line 61
    :cond_c
    :try_start_3
    invoke-virtual {v3}, Ld3/e;->k()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 62
    :catch_3
    invoke-virtual {v1}, Lva/c;->c()Lva/d;

    move-result-object p1

    iput-object p1, p0, Lpa/a1;->b:Lva/d;

    goto :goto_5

    :catchall_2
    move-exception p1

    invoke-virtual {v1}, Lva/c;->c()Lva/d;

    move-result-object p2

    iput-object p2, p0, Lpa/a1;->b:Lva/d;

    .line 63
    throw p1

    .line 64
    :goto_5
    invoke-virtual {p0}, Lva/k;->k()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    .line 1
    iget v0, p0, Lpa/a1;->k:I

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
    iget v0, p0, Lpa/a1;->c:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    and-int/2addr v0, v1

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    iget v0, p0, Lpa/a1;->d:I

    .line 14
    .line 15
    invoke-static {v1, v0}, Ld3/e;->d(II)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 21
    :goto_0
    iget v1, p0, Lpa/a1;->c:I

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    and-int/2addr v1, v2

    .line 25
    if-ne v1, v2, :cond_2

    .line 26
    .line 27
    iget v1, p0, Lpa/a1;->e:I

    .line 28
    .line 29
    invoke-static {v2, v1}, Ld3/e;->d(II)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    :cond_2
    iget v1, p0, Lpa/a1;->c:I

    .line 35
    .line 36
    const/4 v2, 0x4

    .line 37
    and-int/2addr v1, v2

    .line 38
    if-ne v1, v2, :cond_3

    .line 39
    .line 40
    const/4 v1, 0x3

    .line 41
    iget-object v3, p0, Lpa/a1;->f:Lpa/s0;

    .line 42
    .line 43
    invoke-static {v1, v3}, Ld3/e;->f(ILva/a;)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    add-int/2addr v0, v1

    .line 48
    :cond_3
    iget v1, p0, Lpa/a1;->c:I

    .line 49
    .line 50
    const/16 v3, 0x10

    .line 51
    .line 52
    and-int/2addr v1, v3

    .line 53
    if-ne v1, v3, :cond_4

    .line 54
    .line 55
    iget-object v1, p0, Lpa/a1;->h:Lpa/s0;

    .line 56
    .line 57
    invoke-static {v2, v1}, Ld3/e;->f(ILva/a;)I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    add-int/2addr v0, v1

    .line 62
    :cond_4
    iget v1, p0, Lpa/a1;->c:I

    .line 63
    .line 64
    const/16 v2, 0x8

    .line 65
    .line 66
    and-int/2addr v1, v2

    .line 67
    if-ne v1, v2, :cond_5

    .line 68
    .line 69
    const/4 v1, 0x5

    .line 70
    iget v2, p0, Lpa/a1;->g:I

    .line 71
    .line 72
    invoke-static {v1, v2}, Ld3/e;->d(II)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    add-int/2addr v0, v1

    .line 77
    :cond_5
    iget v1, p0, Lpa/a1;->c:I

    .line 78
    .line 79
    const/16 v2, 0x20

    .line 80
    .line 81
    and-int/2addr v1, v2

    .line 82
    if-ne v1, v2, :cond_6

    .line 83
    .line 84
    const/4 v1, 0x6

    .line 85
    iget v2, p0, Lpa/a1;->i:I

    .line 86
    .line 87
    invoke-static {v1, v2}, Ld3/e;->d(II)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    add-int/2addr v0, v1

    .line 92
    :cond_6
    invoke-virtual {p0}, Lva/k;->h()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    add-int/2addr v1, v0

    .line 97
    iget-object v0, p0, Lpa/a1;->b:Lva/d;

    .line 98
    .line 99
    invoke-virtual {v0}, Lva/d;->size()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    add-int/2addr v0, v1

    .line 104
    iput v0, p0, Lpa/a1;->k:I

    .line 105
    .line 106
    return v0
.end method

.method public final b()Lva/i;
    .locals 2

    .line 1
    new-instance v0, Lpa/z0;

    .line 2
    .line 3
    invoke-direct {v0}, Lva/j;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lpa/s0;->t:Lpa/s0;

    .line 7
    .line 8
    iput-object v1, v0, Lpa/z0;->g:Lpa/s0;

    .line 9
    .line 10
    iput-object v1, v0, Lpa/z0;->i:Lpa/s0;

    .line 11
    .line 12
    return-object v0
.end method

.method public final c()Lva/i;
    .locals 2

    .line 1
    new-instance v0, Lpa/z0;

    .line 2
    .line 3
    invoke-direct {v0}, Lva/j;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lpa/s0;->t:Lpa/s0;

    .line 7
    .line 8
    iput-object v1, v0, Lpa/z0;->g:Lpa/s0;

    .line 9
    .line 10
    iput-object v1, v0, Lpa/z0;->i:Lpa/s0;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Lpa/z0;->f(Lpa/a1;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public final d(Ld3/e;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lpa/a1;->a()I

    .line 2
    .line 3
    .line 4
    new-instance v0, Lu0/j;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lu0/j;-><init>(Lva/k;)V

    .line 7
    .line 8
    .line 9
    iget v1, p0, Lpa/a1;->c:I

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    and-int/2addr v1, v2

    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    iget v1, p0, Lpa/a1;->d:I

    .line 16
    .line 17
    invoke-virtual {p1, v2, v1}, Ld3/e;->A(II)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget v1, p0, Lpa/a1;->c:I

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    and-int/2addr v1, v2

    .line 24
    if-ne v1, v2, :cond_1

    .line 25
    .line 26
    iget v1, p0, Lpa/a1;->e:I

    .line 27
    .line 28
    invoke-virtual {p1, v2, v1}, Ld3/e;->A(II)V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget v1, p0, Lpa/a1;->c:I

    .line 32
    .line 33
    const/4 v2, 0x4

    .line 34
    and-int/2addr v1, v2

    .line 35
    if-ne v1, v2, :cond_2

    .line 36
    .line 37
    const/4 v1, 0x3

    .line 38
    iget-object v3, p0, Lpa/a1;->f:Lpa/s0;

    .line 39
    .line 40
    invoke-virtual {p1, v1, v3}, Ld3/e;->C(ILva/a;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    iget v1, p0, Lpa/a1;->c:I

    .line 44
    .line 45
    const/16 v3, 0x10

    .line 46
    .line 47
    and-int/2addr v1, v3

    .line 48
    if-ne v1, v3, :cond_3

    .line 49
    .line 50
    iget-object v1, p0, Lpa/a1;->h:Lpa/s0;

    .line 51
    .line 52
    invoke-virtual {p1, v2, v1}, Ld3/e;->C(ILva/a;)V

    .line 53
    .line 54
    .line 55
    :cond_3
    iget v1, p0, Lpa/a1;->c:I

    .line 56
    .line 57
    const/16 v2, 0x8

    .line 58
    .line 59
    and-int/2addr v1, v2

    .line 60
    if-ne v1, v2, :cond_4

    .line 61
    .line 62
    const/4 v1, 0x5

    .line 63
    iget v2, p0, Lpa/a1;->g:I

    .line 64
    .line 65
    invoke-virtual {p1, v1, v2}, Ld3/e;->A(II)V

    .line 66
    .line 67
    .line 68
    :cond_4
    iget v1, p0, Lpa/a1;->c:I

    .line 69
    .line 70
    const/16 v2, 0x20

    .line 71
    .line 72
    and-int/2addr v1, v2

    .line 73
    if-ne v1, v2, :cond_5

    .line 74
    .line 75
    const/4 v1, 0x6

    .line 76
    iget v2, p0, Lpa/a1;->i:I

    .line 77
    .line 78
    invoke-virtual {p1, v1, v2}, Ld3/e;->A(II)V

    .line 79
    .line 80
    .line 81
    :cond_5
    const/16 v1, 0xc8

    .line 82
    .line 83
    invoke-virtual {v0, v1, p1}, Lu0/j;->O(ILd3/e;)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lpa/a1;->b:Lva/d;

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Ld3/e;->F(Lva/d;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public final getDefaultInstanceForType()Lva/a;
    .locals 1

    .line 1
    sget-object v0, Lpa/a1;->l:Lpa/a1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isInitialized()Z
    .locals 5

    .line 1
    iget-byte v0, p0, Lpa/a1;->j:B

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
    iget v0, p0, Lpa/a1;->c:I

    .line 12
    .line 13
    and-int/lit8 v3, v0, 0x2

    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    if-ne v3, v4, :cond_5

    .line 17
    .line 18
    const/4 v3, 0x4

    .line 19
    and-int/2addr v0, v3

    .line 20
    if-ne v0, v3, :cond_2

    .line 21
    .line 22
    iget-object v0, p0, Lpa/a1;->f:Lpa/s0;

    .line 23
    .line 24
    invoke-virtual {v0}, Lpa/s0;->isInitialized()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    iput-byte v2, p0, Lpa/a1;->j:B

    .line 31
    .line 32
    return v2

    .line 33
    :cond_2
    iget v0, p0, Lpa/a1;->c:I

    .line 34
    .line 35
    const/16 v3, 0x10

    .line 36
    .line 37
    and-int/2addr v0, v3

    .line 38
    if-ne v0, v3, :cond_3

    .line 39
    .line 40
    iget-object v0, p0, Lpa/a1;->h:Lpa/s0;

    .line 41
    .line 42
    invoke-virtual {v0}, Lpa/s0;->isInitialized()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_3

    .line 47
    .line 48
    iput-byte v2, p0, Lpa/a1;->j:B

    .line 49
    .line 50
    return v2

    .line 51
    :cond_3
    invoke-virtual {p0}, Lva/k;->g()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_4

    .line 56
    .line 57
    iput-byte v2, p0, Lpa/a1;->j:B

    .line 58
    .line 59
    return v2

    .line 60
    :cond_4
    iput-byte v1, p0, Lpa/a1;->j:B

    .line 61
    .line 62
    return v1

    .line 63
    :cond_5
    iput-byte v2, p0, Lpa/a1;->j:B

    .line 64
    .line 65
    return v2
.end method
