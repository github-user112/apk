.class public final Lpa/t;
.super Lva/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final i:Lpa/t;

.field public static final j:Lpa/a;


# instance fields
.field public final a:Lva/d;

.field public b:I

.field public c:Lpa/r;

.field public d:Ljava/util/List;

.field public e:Lpa/y;

.field public f:Lpa/s;

.field public g:B

.field public h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lpa/a;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-direct {v0, v1}, Lpa/a;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lpa/t;->j:Lpa/a;

    .line 8
    .line 9
    new-instance v0, Lpa/t;

    .line 10
    .line 11
    invoke-direct {v0}, Lpa/t;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lpa/t;->i:Lpa/t;

    .line 15
    .line 16
    sget-object v1, Lpa/r;->b:Lpa/r;

    .line 17
    .line 18
    iput-object v1, v0, Lpa/t;->c:Lpa/r;

    .line 19
    .line 20
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 21
    .line 22
    iput-object v1, v0, Lpa/t;->d:Ljava/util/List;

    .line 23
    .line 24
    sget-object v1, Lpa/y;->l:Lpa/y;

    .line 25
    .line 26
    iput-object v1, v0, Lpa/t;->e:Lpa/y;

    .line 27
    .line 28
    sget-object v1, Lpa/s;->b:Lpa/s;

    .line 29
    .line 30
    iput-object v1, v0, Lpa/t;->f:Lpa/s;

    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, Lpa/t;->g:B

    .line 3
    iput v0, p0, Lpa/t;->h:I

    .line 4
    sget-object v0, Lva/d;->a:Lva/t;

    iput-object v0, p0, Lpa/t;->a:Lva/d;

    return-void
.end method

.method public constructor <init>(Lpa/q;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lpa/t;->g:B

    .line 7
    iput v0, p0, Lpa/t;->h:I

    .line 8
    iget-object p1, p1, Lva/i;->a:Lva/d;

    .line 9
    iput-object p1, p0, Lpa/t;->a:Lva/d;

    return-void
.end method

.method public constructor <init>(Lva/e;Lva/g;)V
    .locals 11

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput-byte v0, p0, Lpa/t;->g:B

    .line 12
    iput v0, p0, Lpa/t;->h:I

    .line 13
    sget-object v0, Lpa/r;->b:Lpa/r;

    iput-object v0, p0, Lpa/t;->c:Lpa/r;

    .line 14
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, p0, Lpa/t;->d:Ljava/util/List;

    .line 15
    sget-object v1, Lpa/y;->l:Lpa/y;

    .line 16
    iput-object v1, p0, Lpa/t;->e:Lpa/y;

    .line 17
    sget-object v1, Lpa/s;->b:Lpa/s;

    iput-object v1, p0, Lpa/t;->f:Lpa/s;

    .line 18
    new-instance v2, Lva/c;

    invoke-direct {v2}, Lva/c;-><init>()V

    const/4 v3, 0x1

    .line 19
    invoke-static {v2, v3}, Ld3/e;->s(Ljava/io/OutputStream;I)Ld3/e;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_0
    :goto_0
    const/4 v7, 0x2

    if-nez v5, :cond_12

    .line 20
    :try_start_0
    invoke-virtual {p1}, Lva/e;->n()I

    move-result v8

    if-eqz v8, :cond_1

    const/16 v9, 0x8

    const/4 v10, 0x0

    if-eq v8, v9, :cond_c

    const/16 v9, 0x12

    if-eq v8, v9, :cond_a

    const/16 v9, 0x1a

    if-eq v8, v9, :cond_7

    const/16 v9, 0x20

    if-eq v8, v9, :cond_2

    .line 21
    invoke-virtual {p1, v8, v4}, Lva/e;->q(ILd3/e;)Z

    move-result v7

    if-nez v7, :cond_0

    :cond_1
    const/4 v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :catch_1
    move-exception p1

    goto/16 :goto_4

    .line 22
    :cond_2
    invoke-virtual {p1}, Lva/e;->k()I

    move-result v9

    if-eqz v9, :cond_5

    if-eq v9, v3, :cond_4

    if-eq v9, v7, :cond_3

    goto :goto_1

    .line 23
    :cond_3
    sget-object v10, Lpa/s;->d:Lpa/s;

    goto :goto_1

    .line 24
    :cond_4
    sget-object v10, Lpa/s;->c:Lpa/s;

    goto :goto_1

    :cond_5
    move-object v10, v1

    :goto_1
    if-nez v10, :cond_6

    .line 25
    invoke-virtual {v4, v8}, Ld3/e;->J(I)V

    .line 26
    invoke-virtual {v4, v9}, Ld3/e;->J(I)V

    goto :goto_0

    .line 27
    :cond_6
    iget v8, p0, Lpa/t;->b:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lpa/t;->b:I

    .line 28
    iput-object v10, p0, Lpa/t;->f:Lpa/s;

    goto :goto_0

    .line 29
    :cond_7
    iget v8, p0, Lpa/t;->b:I

    and-int/2addr v8, v7

    if-ne v8, v7, :cond_8

    .line 30
    iget-object v8, p0, Lpa/t;->e:Lpa/y;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    invoke-static {}, Lpa/w;->e()Lpa/w;

    move-result-object v10

    .line 32
    invoke-virtual {v10, v8}, Lpa/w;->f(Lpa/y;)V

    .line 33
    :cond_8
    sget-object v8, Lpa/y;->m:Lpa/a;

    invoke-virtual {p1, v8, p2}, Lva/e;->g(Lva/v;Lva/g;)Lva/a;

    move-result-object v8

    check-cast v8, Lpa/y;

    iput-object v8, p0, Lpa/t;->e:Lpa/y;

    if-eqz v10, :cond_9

    .line 34
    invoke-virtual {v10, v8}, Lpa/w;->f(Lpa/y;)V

    .line 35
    invoke-virtual {v10}, Lpa/w;->d()Lpa/y;

    move-result-object v8

    iput-object v8, p0, Lpa/t;->e:Lpa/y;

    .line 36
    :cond_9
    iget v8, p0, Lpa/t;->b:I

    or-int/2addr v8, v7

    iput v8, p0, Lpa/t;->b:I

    goto :goto_0

    :cond_a
    and-int/lit8 v8, v6, 0x2

    if-eq v8, v7, :cond_b

    .line 37
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lpa/t;->d:Ljava/util/List;

    const/4 v6, 0x2

    .line 38
    :cond_b
    iget-object v8, p0, Lpa/t;->d:Ljava/util/List;

    sget-object v9, Lpa/y;->m:Lpa/a;

    invoke-virtual {p1, v9, p2}, Lva/e;->g(Lva/v;Lva/g;)Lva/a;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 39
    :cond_c
    invoke-virtual {p1}, Lva/e;->k()I

    move-result v9

    if-eqz v9, :cond_f

    if-eq v9, v3, :cond_e

    if-eq v9, v7, :cond_d

    goto :goto_2

    .line 40
    :cond_d
    sget-object v10, Lpa/r;->d:Lpa/r;

    goto :goto_2

    .line 41
    :cond_e
    sget-object v10, Lpa/r;->c:Lpa/r;

    goto :goto_2

    :cond_f
    move-object v10, v0

    :goto_2
    if-nez v10, :cond_10

    .line 42
    invoke-virtual {v4, v8}, Ld3/e;->J(I)V

    .line 43
    invoke-virtual {v4, v9}, Ld3/e;->J(I)V

    goto/16 :goto_0

    .line 44
    :cond_10
    iget v8, p0, Lpa/t;->b:I

    or-int/2addr v8, v3

    iput v8, p0, Lpa/t;->b:I

    .line 45
    iput-object v10, p0, Lpa/t;->c:Lpa/r;
    :try_end_0
    .catch Lva/q; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 46
    :goto_3
    :try_start_1
    new-instance p2, Lva/q;

    .line 47
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lva/q;-><init>(Ljava/lang/String;)V

    .line 48
    iput-object p0, p2, Lva/q;->a:Lva/a;

    .line 49
    throw p2

    .line 50
    :goto_4
    iput-object p0, p1, Lva/q;->a:Lva/a;

    .line 51
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    and-int/lit8 p2, v6, 0x2

    if-ne p2, v7, :cond_11

    .line 52
    iget-object p2, p0, Lpa/t;->d:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lpa/t;->d:Ljava/util/List;

    .line 53
    :cond_11
    :try_start_2
    invoke-virtual {v4}, Ld3/e;->k()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 54
    :catch_2
    invoke-virtual {v2}, Lva/c;->c()Lva/d;

    move-result-object p2

    iput-object p2, p0, Lpa/t;->a:Lva/d;

    goto :goto_6

    :catchall_1
    move-exception p1

    invoke-virtual {v2}, Lva/c;->c()Lva/d;

    move-result-object p2

    iput-object p2, p0, Lpa/t;->a:Lva/d;

    .line 55
    throw p1

    .line 56
    :goto_6
    throw p1

    :cond_12
    and-int/lit8 p1, v6, 0x2

    if-ne p1, v7, :cond_13

    .line 57
    iget-object p1, p0, Lpa/t;->d:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lpa/t;->d:Ljava/util/List;

    .line 58
    :cond_13
    :try_start_3
    invoke-virtual {v4}, Ld3/e;->k()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 59
    :catch_3
    invoke-virtual {v2}, Lva/c;->c()Lva/d;

    move-result-object p1

    iput-object p1, p0, Lpa/t;->a:Lva/d;

    return-void

    :catchall_2
    move-exception p1

    invoke-virtual {v2}, Lva/c;->c()Lva/d;

    move-result-object p2

    iput-object p2, p0, Lpa/t;->a:Lva/d;

    .line 60
    throw p1
.end method


# virtual methods
.method public final a()I
    .locals 4

    .line 1
    iget v0, p0, Lpa/t;->h:I

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
    iget v0, p0, Lpa/t;->b:I

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
    iget-object v0, p0, Lpa/t;->c:Lpa/r;

    .line 15
    .line 16
    iget v0, v0, Lpa/r;->a:I

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
    iget-object v1, p0, Lpa/t;->d:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/4 v3, 0x2

    .line 31
    if-ge v2, v1, :cond_2

    .line 32
    .line 33
    iget-object v1, p0, Lpa/t;->d:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lva/a;

    .line 40
    .line 41
    invoke-static {v3, v1}, Ld3/e;->f(ILva/a;)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    add-int/2addr v0, v1

    .line 46
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    iget v1, p0, Lpa/t;->b:I

    .line 50
    .line 51
    and-int/2addr v1, v3

    .line 52
    if-ne v1, v3, :cond_3

    .line 53
    .line 54
    const/4 v1, 0x3

    .line 55
    iget-object v2, p0, Lpa/t;->e:Lpa/y;

    .line 56
    .line 57
    invoke-static {v1, v2}, Ld3/e;->f(ILva/a;)I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    add-int/2addr v0, v1

    .line 62
    :cond_3
    iget v1, p0, Lpa/t;->b:I

    .line 63
    .line 64
    const/4 v2, 0x4

    .line 65
    and-int/2addr v1, v2

    .line 66
    if-ne v1, v2, :cond_4

    .line 67
    .line 68
    iget-object v1, p0, Lpa/t;->f:Lpa/s;

    .line 69
    .line 70
    iget v1, v1, Lpa/s;->a:I

    .line 71
    .line 72
    invoke-static {v2, v1}, Ld3/e;->c(II)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    add-int/2addr v0, v1

    .line 77
    :cond_4
    iget-object v1, p0, Lpa/t;->a:Lva/d;

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
    iput v1, p0, Lpa/t;->h:I

    .line 85
    .line 86
    return v1
.end method

.method public final b()Lva/i;
    .locals 1

    .line 1
    invoke-static {}, Lpa/q;->e()Lpa/q;

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
    invoke-static {}, Lpa/q;->e()Lpa/q;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lpa/q;->f(Lpa/t;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final d(Ld3/e;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lpa/t;->a()I

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lpa/t;->b:I

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    and-int/2addr v0, v1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lpa/t;->c:Lpa/r;

    .line 11
    .line 12
    iget v0, v0, Lpa/r;->a:I

    .line 13
    .line 14
    invoke-virtual {p1, v1, v0}, Ld3/e;->z(II)V

    .line 15
    .line 16
    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    iget-object v1, p0, Lpa/t;->d:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x2

    .line 25
    if-ge v0, v1, :cond_1

    .line 26
    .line 27
    iget-object v1, p0, Lpa/t;->d:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lva/a;

    .line 34
    .line 35
    invoke-virtual {p1, v2, v1}, Ld3/e;->C(ILva/a;)V

    .line 36
    .line 37
    .line 38
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget v0, p0, Lpa/t;->b:I

    .line 42
    .line 43
    and-int/2addr v0, v2

    .line 44
    if-ne v0, v2, :cond_2

    .line 45
    .line 46
    const/4 v0, 0x3

    .line 47
    iget-object v1, p0, Lpa/t;->e:Lpa/y;

    .line 48
    .line 49
    invoke-virtual {p1, v0, v1}, Ld3/e;->C(ILva/a;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    iget v0, p0, Lpa/t;->b:I

    .line 53
    .line 54
    const/4 v1, 0x4

    .line 55
    and-int/2addr v0, v1

    .line 56
    if-ne v0, v1, :cond_3

    .line 57
    .line 58
    iget-object v0, p0, Lpa/t;->f:Lpa/s;

    .line 59
    .line 60
    iget v0, v0, Lpa/s;->a:I

    .line 61
    .line 62
    invoke-virtual {p1, v1, v0}, Ld3/e;->z(II)V

    .line 63
    .line 64
    .line 65
    :cond_3
    iget-object v0, p0, Lpa/t;->a:Lva/d;

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Ld3/e;->F(Lva/d;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final isInitialized()Z
    .locals 4

    .line 1
    iget-byte v0, p0, Lpa/t;->g:B

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
    const/4 v0, 0x0

    .line 12
    :goto_0
    iget-object v3, p0, Lpa/t;->d:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-ge v0, v3, :cond_3

    .line 19
    .line 20
    iget-object v3, p0, Lpa/t;->d:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lpa/y;

    .line 27
    .line 28
    invoke-virtual {v3}, Lpa/y;->isInitialized()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_2

    .line 33
    .line 34
    iput-byte v2, p0, Lpa/t;->g:B

    .line 35
    .line 36
    return v2

    .line 37
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    iget v0, p0, Lpa/t;->b:I

    .line 41
    .line 42
    const/4 v3, 0x2

    .line 43
    and-int/2addr v0, v3

    .line 44
    if-ne v0, v3, :cond_4

    .line 45
    .line 46
    iget-object v0, p0, Lpa/t;->e:Lpa/y;

    .line 47
    .line 48
    invoke-virtual {v0}, Lpa/y;->isInitialized()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_4

    .line 53
    .line 54
    iput-byte v2, p0, Lpa/t;->g:B

    .line 55
    .line 56
    return v2

    .line 57
    :cond_4
    iput-byte v1, p0, Lpa/t;->g:B

    .line 58
    .line 59
    return v1
.end method
