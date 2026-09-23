.class public final Lpa/f;
.super Lva/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final g:Lpa/f;

.field public static final h:Lpa/a;


# instance fields
.field public final a:Lva/d;

.field public b:I

.field public c:I

.field public d:Lpa/e;

.field public e:B

.field public f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lpa/a;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lpa/a;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lpa/f;->h:Lpa/a;

    .line 8
    .line 9
    new-instance v0, Lpa/f;

    .line 10
    .line 11
    invoke-direct {v0}, Lpa/f;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lpa/f;->g:Lpa/f;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput v1, v0, Lpa/f;->c:I

    .line 18
    .line 19
    sget-object v1, Lpa/e;->p:Lpa/e;

    .line 20
    .line 21
    iput-object v1, v0, Lpa/f;->d:Lpa/e;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, Lpa/f;->e:B

    .line 3
    iput v0, p0, Lpa/f;->f:I

    .line 4
    sget-object v0, Lva/d;->a:Lva/t;

    iput-object v0, p0, Lpa/f;->a:Lva/d;

    return-void
.end method

.method public constructor <init>(Lpa/b;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lpa/f;->e:B

    .line 7
    iput v0, p0, Lpa/f;->f:I

    .line 8
    iget-object p1, p1, Lva/i;->a:Lva/d;

    .line 9
    iput-object p1, p0, Lpa/f;->a:Lva/d;

    return-void
.end method

.method public constructor <init>(Lva/e;Lva/g;)V
    .locals 7

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput-byte v0, p0, Lpa/f;->e:B

    .line 12
    iput v0, p0, Lpa/f;->f:I

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lpa/f;->c:I

    .line 14
    sget-object v1, Lpa/e;->p:Lpa/e;

    .line 15
    iput-object v1, p0, Lpa/f;->d:Lpa/e;

    .line 16
    new-instance v1, Lva/c;

    invoke-direct {v1}, Lva/c;-><init>()V

    const/4 v2, 0x1

    .line 17
    invoke-static {v1, v2}, Ld3/e;->s(Ljava/io/OutputStream;I)Ld3/e;

    move-result-object v3

    :cond_0
    :goto_0
    if-nez v0, :cond_6

    .line 18
    :try_start_0
    invoke-virtual {p1}, Lva/e;->n()I

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0x8

    if-eq v4, v5, :cond_5

    const/16 v5, 0x12

    if-eq v4, v5, :cond_2

    .line 19
    invoke-virtual {p1, v4, v3}, Lva/e;->q(ILd3/e;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    .line 20
    :cond_2
    iget v4, p0, Lpa/f;->b:I

    const/4 v5, 0x2

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_3

    .line 21
    iget-object v4, p0, Lpa/f;->d:Lpa/e;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    invoke-static {}, Lpa/c;->e()Lpa/c;

    move-result-object v6

    .line 23
    invoke-virtual {v6, v4}, Lpa/c;->f(Lpa/e;)V

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    .line 24
    :goto_1
    sget-object v4, Lpa/e;->q:Lpa/a;

    invoke-virtual {p1, v4, p2}, Lva/e;->g(Lva/v;Lva/g;)Lva/a;

    move-result-object v4

    check-cast v4, Lpa/e;

    iput-object v4, p0, Lpa/f;->d:Lpa/e;

    if-eqz v6, :cond_4

    .line 25
    invoke-virtual {v6, v4}, Lpa/c;->f(Lpa/e;)V

    .line 26
    invoke-virtual {v6}, Lpa/c;->d()Lpa/e;

    move-result-object v4

    iput-object v4, p0, Lpa/f;->d:Lpa/e;

    .line 27
    :cond_4
    iget v4, p0, Lpa/f;->b:I

    or-int/2addr v4, v5

    iput v4, p0, Lpa/f;->b:I

    goto :goto_0

    .line 28
    :cond_5
    iget v4, p0, Lpa/f;->b:I

    or-int/2addr v4, v2

    iput v4, p0, Lpa/f;->b:I

    .line 29
    invoke-virtual {p1}, Lva/e;->k()I

    move-result v4

    .line 30
    iput v4, p0, Lpa/f;->c:I
    :try_end_0
    .catch Lva/q; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 31
    :goto_2
    :try_start_1
    new-instance p2, Lva/q;

    .line 32
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lva/q;-><init>(Ljava/lang/String;)V

    .line 33
    iput-object p0, p2, Lva/q;->a:Lva/a;

    .line 34
    throw p2

    .line 35
    :goto_3
    iput-object p0, p1, Lva/q;->a:Lva/a;

    .line 36
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :goto_4
    :try_start_2
    invoke-virtual {v3}, Ld3/e;->k()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 38
    :catch_2
    invoke-virtual {v1}, Lva/c;->c()Lva/d;

    move-result-object p2

    iput-object p2, p0, Lpa/f;->a:Lva/d;

    goto :goto_5

    :catchall_1
    move-exception p1

    invoke-virtual {v1}, Lva/c;->c()Lva/d;

    move-result-object p2

    iput-object p2, p0, Lpa/f;->a:Lva/d;

    .line 39
    throw p1

    .line 40
    :goto_5
    throw p1

    .line 41
    :cond_6
    :try_start_3
    invoke-virtual {v3}, Ld3/e;->k()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 42
    :catch_3
    invoke-virtual {v1}, Lva/c;->c()Lva/d;

    move-result-object p1

    iput-object p1, p0, Lpa/f;->a:Lva/d;

    return-void

    :catchall_2
    move-exception p1

    invoke-virtual {v1}, Lva/c;->c()Lva/d;

    move-result-object p2

    iput-object p2, p0, Lpa/f;->a:Lva/d;

    .line 43
    throw p1
.end method


# virtual methods
.method public final a()I
    .locals 3

    .line 1
    iget v0, p0, Lpa/f;->f:I

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
    iget v0, p0, Lpa/f;->b:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    and-int/2addr v0, v1

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    iget v0, p0, Lpa/f;->c:I

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
    iget v1, p0, Lpa/f;->b:I

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    and-int/2addr v1, v2

    .line 25
    if-ne v1, v2, :cond_2

    .line 26
    .line 27
    iget-object v1, p0, Lpa/f;->d:Lpa/e;

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
    iget-object v1, p0, Lpa/f;->a:Lva/d;

    .line 35
    .line 36
    invoke-virtual {v1}, Lva/d;->size()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    add-int/2addr v1, v0

    .line 41
    iput v1, p0, Lpa/f;->f:I

    .line 42
    .line 43
    return v1
.end method

.method public final b()Lva/i;
    .locals 2

    .line 1
    new-instance v0, Lpa/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lpa/b;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sget-object v1, Lpa/e;->p:Lpa/e;

    .line 8
    .line 9
    iput-object v1, v0, Lpa/b;->e:Ljava/lang/Object;

    .line 10
    .line 11
    return-object v0
.end method

.method public final c()Lva/i;
    .locals 2

    .line 1
    new-instance v0, Lpa/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lpa/b;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sget-object v1, Lpa/e;->p:Lpa/e;

    .line 8
    .line 9
    iput-object v1, v0, Lpa/b;->e:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Lpa/b;->f(Lpa/f;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public final d(Ld3/e;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lpa/f;->a()I

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lpa/f;->b:I

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    and-int/2addr v0, v1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget v0, p0, Lpa/f;->c:I

    .line 11
    .line 12
    invoke-virtual {p1, v1, v0}, Ld3/e;->A(II)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget v0, p0, Lpa/f;->b:I

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    and-int/2addr v0, v1

    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lpa/f;->d:Lpa/e;

    .line 22
    .line 23
    invoke-virtual {p1, v1, v0}, Ld3/e;->C(ILva/a;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lpa/f;->a:Lva/d;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ld3/e;->F(Lva/d;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final isInitialized()Z
    .locals 4

    .line 1
    iget-byte v0, p0, Lpa/f;->e:B

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
    iget v0, p0, Lpa/f;->b:I

    .line 12
    .line 13
    and-int/lit8 v3, v0, 0x1

    .line 14
    .line 15
    if-ne v3, v1, :cond_4

    .line 16
    .line 17
    const/4 v3, 0x2

    .line 18
    and-int/2addr v0, v3

    .line 19
    if-ne v0, v3, :cond_3

    .line 20
    .line 21
    iget-object v0, p0, Lpa/f;->d:Lpa/e;

    .line 22
    .line 23
    invoke-virtual {v0}, Lpa/e;->isInitialized()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    iput-byte v2, p0, Lpa/f;->e:B

    .line 30
    .line 31
    return v2

    .line 32
    :cond_2
    iput-byte v1, p0, Lpa/f;->e:B

    .line 33
    .line 34
    return v1

    .line 35
    :cond_3
    iput-byte v2, p0, Lpa/f;->e:B

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    iput-byte v2, p0, Lpa/f;->e:B

    .line 39
    .line 40
    return v2
.end method
