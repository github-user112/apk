.class public final Lpa/l;
.super Lva/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final g:Lpa/l;

.field public static final h:Lpa/a;


# instance fields
.field public final a:Lva/d;

.field public b:I

.field public c:I

.field public d:Lva/t;

.field public e:B

.field public f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lpa/a;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, v1}, Lpa/a;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lpa/l;->h:Lpa/a;

    .line 8
    .line 9
    new-instance v0, Lpa/l;

    .line 10
    .line 11
    invoke-direct {v0}, Lpa/l;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lpa/l;->g:Lpa/l;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput v1, v0, Lpa/l;->c:I

    .line 18
    .line 19
    sget-object v1, Lva/d;->a:Lva/t;

    .line 20
    .line 21
    iput-object v1, v0, Lpa/l;->d:Lva/t;

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
    iput-byte v0, p0, Lpa/l;->e:B

    .line 3
    iput v0, p0, Lpa/l;->f:I

    .line 4
    sget-object v0, Lva/d;->a:Lva/t;

    iput-object v0, p0, Lpa/l;->a:Lva/d;

    return-void
.end method

.method public constructor <init>(Lpa/b;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lpa/l;->e:B

    .line 7
    iput v0, p0, Lpa/l;->f:I

    .line 8
    iget-object p1, p1, Lva/i;->a:Lva/d;

    .line 9
    iput-object p1, p0, Lpa/l;->a:Lva/d;

    return-void
.end method

.method public constructor <init>(Lva/e;)V
    .locals 6

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput-byte v0, p0, Lpa/l;->e:B

    .line 12
    iput v0, p0, Lpa/l;->f:I

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lpa/l;->c:I

    .line 14
    sget-object v1, Lva/d;->a:Lva/t;

    iput-object v1, p0, Lpa/l;->d:Lva/t;

    .line 15
    new-instance v1, Lva/c;

    invoke-direct {v1}, Lva/c;-><init>()V

    const/4 v2, 0x1

    .line 16
    invoke-static {v1, v2}, Ld3/e;->s(Ljava/io/OutputStream;I)Ld3/e;

    move-result-object v3

    :cond_0
    :goto_0
    if-nez v0, :cond_4

    .line 17
    :try_start_0
    invoke-virtual {p1}, Lva/e;->n()I

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0x8

    if-eq v4, v5, :cond_3

    const/16 v5, 0x12

    if-eq v4, v5, :cond_2

    .line 18
    invoke-virtual {p1, v4, v3}, Lva/e;->q(ILd3/e;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    .line 19
    :cond_2
    iget v4, p0, Lpa/l;->b:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lpa/l;->b:I

    .line 20
    invoke-virtual {p1}, Lva/e;->e()Lva/t;

    move-result-object v4

    iput-object v4, p0, Lpa/l;->d:Lva/t;

    goto :goto_0

    .line 21
    :cond_3
    iget v4, p0, Lpa/l;->b:I

    or-int/2addr v4, v2

    iput v4, p0, Lpa/l;->b:I

    .line 22
    invoke-virtual {p1}, Lva/e;->k()I

    move-result v4

    .line 23
    iput v4, p0, Lpa/l;->c:I
    :try_end_0
    .catch Lva/q; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 24
    :goto_1
    :try_start_1
    new-instance v0, Lva/q;

    .line 25
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lva/q;-><init>(Ljava/lang/String;)V

    .line 26
    iput-object p0, v0, Lva/q;->a:Lva/a;

    .line 27
    throw v0

    .line 28
    :goto_2
    iput-object p0, p1, Lva/q;->a:Lva/a;

    .line 29
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    :goto_3
    :try_start_2
    invoke-virtual {v3}, Ld3/e;->k()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 31
    :catch_2
    invoke-virtual {v1}, Lva/c;->c()Lva/d;

    move-result-object v0

    iput-object v0, p0, Lpa/l;->a:Lva/d;

    goto :goto_4

    :catchall_1
    move-exception p1

    invoke-virtual {v1}, Lva/c;->c()Lva/d;

    move-result-object v0

    iput-object v0, p0, Lpa/l;->a:Lva/d;

    .line 32
    throw p1

    .line 33
    :goto_4
    throw p1

    .line 34
    :cond_4
    :try_start_3
    invoke-virtual {v3}, Ld3/e;->k()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 35
    :catch_3
    invoke-virtual {v1}, Lva/c;->c()Lva/d;

    move-result-object p1

    iput-object p1, p0, Lpa/l;->a:Lva/d;

    return-void

    :catchall_2
    move-exception p1

    invoke-virtual {v1}, Lva/c;->c()Lva/d;

    move-result-object v0

    iput-object v0, p0, Lpa/l;->a:Lva/d;

    .line 36
    throw p1
.end method


# virtual methods
.method public final a()I
    .locals 4

    .line 1
    iget v0, p0, Lpa/l;->f:I

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
    iget v0, p0, Lpa/l;->b:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    and-int/2addr v0, v1

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    iget v0, p0, Lpa/l;->c:I

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
    iget v1, p0, Lpa/l;->b:I

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    and-int/2addr v1, v2

    .line 25
    if-ne v1, v2, :cond_2

    .line 26
    .line 27
    iget-object v1, p0, Lpa/l;->d:Lva/t;

    .line 28
    .line 29
    invoke-static {v2}, Ld3/e;->j(I)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-virtual {v1}, Lva/t;->size()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-static {v3}, Ld3/e;->h(I)I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    invoke-virtual {v1}, Lva/t;->size()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    add-int/2addr v1, v3

    .line 46
    add-int/2addr v1, v2

    .line 47
    add-int/2addr v0, v1

    .line 48
    :cond_2
    iget-object v1, p0, Lpa/l;->a:Lva/d;

    .line 49
    .line 50
    invoke-virtual {v1}, Lva/d;->size()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    add-int/2addr v1, v0

    .line 55
    iput v1, p0, Lpa/l;->f:I

    .line 56
    .line 57
    return v1
.end method

.method public final b()Lva/i;
    .locals 2

    .line 1
    new-instance v0, Lpa/b;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lpa/b;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sget-object v1, Lva/d;->a:Lva/t;

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
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lpa/b;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sget-object v1, Lva/d;->a:Lva/t;

    .line 8
    .line 9
    iput-object v1, v0, Lpa/b;->e:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Lpa/b;->g(Lpa/l;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public final d(Ld3/e;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lpa/l;->a()I

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lpa/l;->b:I

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    and-int/2addr v0, v1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget v0, p0, Lpa/l;->c:I

    .line 11
    .line 12
    invoke-virtual {p1, v1, v0}, Ld3/e;->A(II)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget v0, p0, Lpa/l;->b:I

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    and-int/2addr v0, v1

    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lpa/l;->d:Lva/t;

    .line 22
    .line 23
    invoke-virtual {p1, v1, v1}, Ld3/e;->L(II)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lva/t;->size()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {p1, v1}, Ld3/e;->J(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ld3/e;->F(Lva/d;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, Lpa/l;->a:Lva/d;

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Ld3/e;->F(Lva/d;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final isInitialized()Z
    .locals 4

    .line 1
    iget-byte v0, p0, Lpa/l;->e:B

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
    iget v0, p0, Lpa/l;->b:I

    .line 12
    .line 13
    and-int/lit8 v3, v0, 0x1

    .line 14
    .line 15
    if-ne v3, v1, :cond_3

    .line 16
    .line 17
    const/4 v3, 0x2

    .line 18
    and-int/2addr v0, v3

    .line 19
    if-ne v0, v3, :cond_2

    .line 20
    .line 21
    iput-byte v1, p0, Lpa/l;->e:B

    .line 22
    .line 23
    return v1

    .line 24
    :cond_2
    iput-byte v2, p0, Lpa/l;->e:B

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iput-byte v2, p0, Lpa/l;->e:B

    .line 28
    .line 29
    return v2
.end method
