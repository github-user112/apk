.class public final Lsa/e;
.super Lva/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final j:Lsa/e;

.field public static final k:Lpa/a;


# instance fields
.field public final a:Lva/d;

.field public b:I

.field public c:Lsa/b;

.field public d:Lsa/c;

.field public e:Lsa/c;

.field public f:Lsa/c;

.field public g:Lsa/c;

.field public h:B

.field public i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lpa/a;

    .line 2
    .line 3
    const/16 v1, 0x1b

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lpa/a;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lsa/e;->k:Lpa/a;

    .line 9
    .line 10
    new-instance v0, Lsa/e;

    .line 11
    .line 12
    invoke-direct {v0}, Lsa/e;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lsa/e;->j:Lsa/e;

    .line 16
    .line 17
    sget-object v1, Lsa/b;->g:Lsa/b;

    .line 18
    .line 19
    iput-object v1, v0, Lsa/e;->c:Lsa/b;

    .line 20
    .line 21
    sget-object v1, Lsa/c;->g:Lsa/c;

    .line 22
    .line 23
    iput-object v1, v0, Lsa/e;->d:Lsa/c;

    .line 24
    .line 25
    iput-object v1, v0, Lsa/e;->e:Lsa/c;

    .line 26
    .line 27
    iput-object v1, v0, Lsa/e;->f:Lsa/c;

    .line 28
    .line 29
    iput-object v1, v0, Lsa/e;->g:Lsa/c;

    .line 30
    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, Lsa/e;->h:B

    .line 3
    iput v0, p0, Lsa/e;->i:I

    .line 4
    sget-object v0, Lva/d;->a:Lva/t;

    iput-object v0, p0, Lsa/e;->a:Lva/d;

    return-void
.end method

.method public constructor <init>(Lsa/d;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lsa/e;->h:B

    .line 7
    iput v0, p0, Lsa/e;->i:I

    .line 8
    iget-object p1, p1, Lva/i;->a:Lva/d;

    .line 9
    iput-object p1, p0, Lsa/e;->a:Lva/d;

    return-void
.end method

.method public constructor <init>(Lva/e;Lva/g;)V
    .locals 7

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput-byte v0, p0, Lsa/e;->h:B

    .line 12
    iput v0, p0, Lsa/e;->i:I

    .line 13
    sget-object v0, Lsa/b;->g:Lsa/b;

    .line 14
    iput-object v0, p0, Lsa/e;->c:Lsa/b;

    .line 15
    sget-object v0, Lsa/c;->g:Lsa/c;

    .line 16
    iput-object v0, p0, Lsa/e;->d:Lsa/c;

    .line 17
    iput-object v0, p0, Lsa/e;->e:Lsa/c;

    .line 18
    iput-object v0, p0, Lsa/e;->f:Lsa/c;

    .line 19
    iput-object v0, p0, Lsa/e;->g:Lsa/c;

    .line 20
    new-instance v0, Lva/c;

    invoke-direct {v0}, Lva/c;-><init>()V

    const/4 v1, 0x1

    .line 21
    invoke-static {v0, v1}, Ld3/e;->s(Ljava/io/OutputStream;I)Ld3/e;

    move-result-object v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v3, :cond_11

    .line 22
    :try_start_0
    invoke-virtual {p1}, Lva/e;->n()I

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0xa

    const/4 v6, 0x0

    if-eq v4, v5, :cond_e

    const/16 v5, 0x12

    if-eq v4, v5, :cond_b

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_8

    const/16 v5, 0x22

    if-eq v4, v5, :cond_5

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_2

    .line 23
    invoke-virtual {p1, v4, v2}, Lva/e;->q(ILd3/e;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_1
    const/4 v3, 0x1

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
    iget v4, p0, Lsa/e;->b:I

    const/16 v5, 0x10

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_3

    .line 25
    iget-object v4, p0, Lsa/e;->g:Lsa/c;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-static {v4}, Lsa/c;->g(Lsa/c;)Lsa/a;

    move-result-object v6

    .line 27
    :cond_3
    sget-object v4, Lsa/c;->h:Lpa/a;

    invoke-virtual {p1, v4, p2}, Lva/e;->g(Lva/v;Lva/g;)Lva/a;

    move-result-object v4

    check-cast v4, Lsa/c;

    iput-object v4, p0, Lsa/e;->g:Lsa/c;

    if-eqz v6, :cond_4

    .line 28
    invoke-virtual {v6, v4}, Lsa/a;->g(Lsa/c;)V

    .line 29
    invoke-virtual {v6}, Lsa/a;->e()Lsa/c;

    move-result-object v4

    iput-object v4, p0, Lsa/e;->g:Lsa/c;

    .line 30
    :cond_4
    iget v4, p0, Lsa/e;->b:I

    or-int/2addr v4, v5

    iput v4, p0, Lsa/e;->b:I

    goto :goto_0

    .line 31
    :cond_5
    iget v4, p0, Lsa/e;->b:I

    const/16 v5, 0x8

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_6

    .line 32
    iget-object v4, p0, Lsa/e;->f:Lsa/c;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    invoke-static {v4}, Lsa/c;->g(Lsa/c;)Lsa/a;

    move-result-object v6

    .line 34
    :cond_6
    sget-object v4, Lsa/c;->h:Lpa/a;

    invoke-virtual {p1, v4, p2}, Lva/e;->g(Lva/v;Lva/g;)Lva/a;

    move-result-object v4

    check-cast v4, Lsa/c;

    iput-object v4, p0, Lsa/e;->f:Lsa/c;

    if-eqz v6, :cond_7

    .line 35
    invoke-virtual {v6, v4}, Lsa/a;->g(Lsa/c;)V

    .line 36
    invoke-virtual {v6}, Lsa/a;->e()Lsa/c;

    move-result-object v4

    iput-object v4, p0, Lsa/e;->f:Lsa/c;

    .line 37
    :cond_7
    iget v4, p0, Lsa/e;->b:I

    or-int/2addr v4, v5

    iput v4, p0, Lsa/e;->b:I

    goto/16 :goto_0

    .line 38
    :cond_8
    iget v4, p0, Lsa/e;->b:I

    const/4 v5, 0x4

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_9

    .line 39
    iget-object v4, p0, Lsa/e;->e:Lsa/c;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    invoke-static {v4}, Lsa/c;->g(Lsa/c;)Lsa/a;

    move-result-object v6

    .line 41
    :cond_9
    sget-object v4, Lsa/c;->h:Lpa/a;

    invoke-virtual {p1, v4, p2}, Lva/e;->g(Lva/v;Lva/g;)Lva/a;

    move-result-object v4

    check-cast v4, Lsa/c;

    iput-object v4, p0, Lsa/e;->e:Lsa/c;

    if-eqz v6, :cond_a

    .line 42
    invoke-virtual {v6, v4}, Lsa/a;->g(Lsa/c;)V

    .line 43
    invoke-virtual {v6}, Lsa/a;->e()Lsa/c;

    move-result-object v4

    iput-object v4, p0, Lsa/e;->e:Lsa/c;

    .line 44
    :cond_a
    iget v4, p0, Lsa/e;->b:I

    or-int/2addr v4, v5

    iput v4, p0, Lsa/e;->b:I

    goto/16 :goto_0

    .line 45
    :cond_b
    iget v4, p0, Lsa/e;->b:I

    const/4 v5, 0x2

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_c

    .line 46
    iget-object v4, p0, Lsa/e;->d:Lsa/c;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    invoke-static {v4}, Lsa/c;->g(Lsa/c;)Lsa/a;

    move-result-object v6

    .line 48
    :cond_c
    sget-object v4, Lsa/c;->h:Lpa/a;

    invoke-virtual {p1, v4, p2}, Lva/e;->g(Lva/v;Lva/g;)Lva/a;

    move-result-object v4

    check-cast v4, Lsa/c;

    iput-object v4, p0, Lsa/e;->d:Lsa/c;

    if-eqz v6, :cond_d

    .line 49
    invoke-virtual {v6, v4}, Lsa/a;->g(Lsa/c;)V

    .line 50
    invoke-virtual {v6}, Lsa/a;->e()Lsa/c;

    move-result-object v4

    iput-object v4, p0, Lsa/e;->d:Lsa/c;

    .line 51
    :cond_d
    iget v4, p0, Lsa/e;->b:I

    or-int/2addr v4, v5

    iput v4, p0, Lsa/e;->b:I

    goto/16 :goto_0

    .line 52
    :cond_e
    iget v4, p0, Lsa/e;->b:I

    and-int/2addr v4, v1

    if-ne v4, v1, :cond_f

    .line 53
    iget-object v4, p0, Lsa/e;->c:Lsa/b;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    new-instance v6, Lsa/a;

    const/4 v5, 0x0

    .line 55
    invoke-direct {v6, v5}, Lsa/a;-><init>(I)V

    .line 56
    invoke-virtual {v6, v4}, Lsa/a;->f(Lsa/b;)V

    .line 57
    :cond_f
    sget-object v4, Lsa/b;->h:Lpa/a;

    invoke-virtual {p1, v4, p2}, Lva/e;->g(Lva/v;Lva/g;)Lva/a;

    move-result-object v4

    check-cast v4, Lsa/b;

    iput-object v4, p0, Lsa/e;->c:Lsa/b;

    if-eqz v6, :cond_10

    .line 58
    invoke-virtual {v6, v4}, Lsa/a;->f(Lsa/b;)V

    .line 59
    invoke-virtual {v6}, Lsa/a;->d()Lsa/b;

    move-result-object v4

    iput-object v4, p0, Lsa/e;->c:Lsa/b;

    .line 60
    :cond_10
    iget v4, p0, Lsa/e;->b:I

    or-int/2addr v4, v1

    iput v4, p0, Lsa/e;->b:I
    :try_end_0
    .catch Lva/q; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 61
    :goto_1
    :try_start_1
    new-instance p2, Lva/q;

    .line 62
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lva/q;-><init>(Ljava/lang/String;)V

    .line 63
    iput-object p0, p2, Lva/q;->a:Lva/a;

    .line 64
    throw p2

    .line 65
    :goto_2
    iput-object p0, p1, Lva/q;->a:Lva/a;

    .line 66
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    :goto_3
    :try_start_2
    invoke-virtual {v2}, Ld3/e;->k()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 68
    :catch_2
    invoke-virtual {v0}, Lva/c;->c()Lva/d;

    move-result-object p2

    iput-object p2, p0, Lsa/e;->a:Lva/d;

    goto :goto_4

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lva/c;->c()Lva/d;

    move-result-object p2

    iput-object p2, p0, Lsa/e;->a:Lva/d;

    .line 69
    throw p1

    .line 70
    :goto_4
    throw p1

    .line 71
    :cond_11
    :try_start_3
    invoke-virtual {v2}, Ld3/e;->k()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 72
    :catch_3
    invoke-virtual {v0}, Lva/c;->c()Lva/d;

    move-result-object p1

    iput-object p1, p0, Lsa/e;->a:Lva/d;

    return-void

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lva/c;->c()Lva/d;

    move-result-object p2

    iput-object p2, p0, Lsa/e;->a:Lva/d;

    .line 73
    throw p1
.end method


# virtual methods
.method public final a()I
    .locals 4

    .line 1
    iget v0, p0, Lsa/e;->i:I

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
    iget v0, p0, Lsa/e;->b:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    and-int/2addr v0, v1

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lsa/e;->c:Lsa/b;

    .line 14
    .line 15
    invoke-static {v1, v0}, Ld3/e;->f(ILva/a;)I

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
    iget v1, p0, Lsa/e;->b:I

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    and-int/2addr v1, v2

    .line 25
    if-ne v1, v2, :cond_2

    .line 26
    .line 27
    iget-object v1, p0, Lsa/e;->d:Lsa/c;

    .line 28
    .line 29
    invoke-static {v2, v1}, Ld3/e;->f(ILva/a;)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    :cond_2
    iget v1, p0, Lsa/e;->b:I

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
    iget-object v3, p0, Lsa/e;->e:Lsa/c;

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
    iget v1, p0, Lsa/e;->b:I

    .line 49
    .line 50
    const/16 v3, 0x8

    .line 51
    .line 52
    and-int/2addr v1, v3

    .line 53
    if-ne v1, v3, :cond_4

    .line 54
    .line 55
    iget-object v1, p0, Lsa/e;->f:Lsa/c;

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
    iget v1, p0, Lsa/e;->b:I

    .line 63
    .line 64
    const/16 v2, 0x10

    .line 65
    .line 66
    and-int/2addr v1, v2

    .line 67
    if-ne v1, v2, :cond_5

    .line 68
    .line 69
    const/4 v1, 0x5

    .line 70
    iget-object v2, p0, Lsa/e;->g:Lsa/c;

    .line 71
    .line 72
    invoke-static {v1, v2}, Ld3/e;->f(ILva/a;)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    add-int/2addr v0, v1

    .line 77
    :cond_5
    iget-object v1, p0, Lsa/e;->a:Lva/d;

    .line 78
    .line 79
    invoke-virtual {v1}, Lva/d;->size()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    add-int/2addr v1, v0

    .line 84
    iput v1, p0, Lsa/e;->i:I

    .line 85
    .line 86
    return v1
.end method

.method public final b()Lva/i;
    .locals 1

    .line 1
    invoke-static {}, Lsa/d;->e()Lsa/d;

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
    invoke-static {}, Lsa/d;->e()Lsa/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lsa/d;->f(Lsa/e;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final d(Ld3/e;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lsa/e;->a()I

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lsa/e;->b:I

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    and-int/2addr v0, v1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lsa/e;->c:Lsa/b;

    .line 11
    .line 12
    invoke-virtual {p1, v1, v0}, Ld3/e;->C(ILva/a;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget v0, p0, Lsa/e;->b:I

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    and-int/2addr v0, v1

    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lsa/e;->d:Lsa/c;

    .line 22
    .line 23
    invoke-virtual {p1, v1, v0}, Ld3/e;->C(ILva/a;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    iget v0, p0, Lsa/e;->b:I

    .line 27
    .line 28
    const/4 v1, 0x4

    .line 29
    and-int/2addr v0, v1

    .line 30
    if-ne v0, v1, :cond_2

    .line 31
    .line 32
    const/4 v0, 0x3

    .line 33
    iget-object v2, p0, Lsa/e;->e:Lsa/c;

    .line 34
    .line 35
    invoke-virtual {p1, v0, v2}, Ld3/e;->C(ILva/a;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    iget v0, p0, Lsa/e;->b:I

    .line 39
    .line 40
    const/16 v2, 0x8

    .line 41
    .line 42
    and-int/2addr v0, v2

    .line 43
    if-ne v0, v2, :cond_3

    .line 44
    .line 45
    iget-object v0, p0, Lsa/e;->f:Lsa/c;

    .line 46
    .line 47
    invoke-virtual {p1, v1, v0}, Ld3/e;->C(ILva/a;)V

    .line 48
    .line 49
    .line 50
    :cond_3
    iget v0, p0, Lsa/e;->b:I

    .line 51
    .line 52
    const/16 v1, 0x10

    .line 53
    .line 54
    and-int/2addr v0, v1

    .line 55
    if-ne v0, v1, :cond_4

    .line 56
    .line 57
    const/4 v0, 0x5

    .line 58
    iget-object v1, p0, Lsa/e;->g:Lsa/c;

    .line 59
    .line 60
    invoke-virtual {p1, v0, v1}, Ld3/e;->C(ILva/a;)V

    .line 61
    .line 62
    .line 63
    :cond_4
    iget-object v0, p0, Lsa/e;->a:Lva/d;

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Ld3/e;->F(Lva/d;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lsa/e;->h:B

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
    iput-byte v1, p0, Lsa/e;->h:B

    .line 8
    .line 9
    return v1
.end method
