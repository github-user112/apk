.class public final Lpa/n0;
.super Lva/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final e:Lpa/n0;

.field public static final f:Lpa/a;


# instance fields
.field public final a:Lva/d;

.field public b:Lva/s;

.field public c:B

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lpa/a;

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lpa/a;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lpa/n0;->f:Lpa/a;

    .line 9
    .line 10
    new-instance v0, Lpa/n0;

    .line 11
    .line 12
    invoke-direct {v0}, Lpa/n0;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lpa/n0;->e:Lpa/n0;

    .line 16
    .line 17
    sget-object v1, Lva/r;->b:Lva/h0;

    .line 18
    .line 19
    iput-object v1, v0, Lpa/n0;->b:Lva/s;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, Lpa/n0;->c:B

    .line 3
    iput v0, p0, Lpa/n0;->d:I

    .line 4
    sget-object v0, Lva/d;->a:Lva/t;

    iput-object v0, p0, Lpa/n0;->a:Lva/d;

    return-void
.end method

.method public constructor <init>(Lpa/o;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lpa/n0;->c:B

    .line 7
    iput v0, p0, Lpa/n0;->d:I

    .line 8
    iget-object p1, p1, Lva/i;->a:Lva/d;

    .line 9
    iput-object p1, p0, Lpa/n0;->a:Lva/d;

    return-void
.end method

.method public constructor <init>(Lva/e;)V
    .locals 7

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput-byte v0, p0, Lpa/n0;->c:B

    .line 12
    iput v0, p0, Lpa/n0;->d:I

    .line 13
    sget-object v0, Lva/r;->b:Lva/h0;

    iput-object v0, p0, Lpa/n0;->b:Lva/s;

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
    if-nez v3, :cond_5

    .line 16
    :try_start_0
    invoke-virtual {p1}, Lva/e;->n()I

    move-result v5

    if-eqz v5, :cond_1

    const/16 v6, 0xa

    if-eq v5, v6, :cond_2

    .line 17
    invoke-virtual {p1, v5, v2}, Lva/e;->q(ILd3/e;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_1
    const/4 v3, 0x1

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

    .line 18
    :cond_2
    invoke-virtual {p1}, Lva/e;->e()Lva/t;

    move-result-object v5

    if-eq v4, v1, :cond_3

    .line 19
    new-instance v6, Lva/r;

    invoke-direct {v6}, Lva/r;-><init>()V

    iput-object v6, p0, Lpa/n0;->b:Lva/s;

    const/4 v4, 0x1

    .line 20
    :cond_3
    iget-object v6, p0, Lpa/n0;->b:Lva/s;

    invoke-interface {v6, v5}, Lva/s;->f(Lva/t;)V
    :try_end_0
    .catch Lva/q; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 21
    :goto_1
    :try_start_1
    new-instance v3, Lva/q;

    .line 22
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lva/q;-><init>(Ljava/lang/String;)V

    .line 23
    iput-object p0, v3, Lva/q;->a:Lva/a;

    .line 24
    throw v3

    .line 25
    :goto_2
    iput-object p0, p1, Lva/q;->a:Lva/a;

    .line 26
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    if-ne v4, v1, :cond_4

    .line 27
    iget-object v1, p0, Lpa/n0;->b:Lva/s;

    invoke-interface {v1}, Lva/s;->i()Lva/h0;

    move-result-object v1

    iput-object v1, p0, Lpa/n0;->b:Lva/s;

    .line 28
    :cond_4
    :try_start_2
    invoke-virtual {v2}, Ld3/e;->k()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 29
    :catch_2
    invoke-virtual {v0}, Lva/c;->c()Lva/d;

    move-result-object v0

    iput-object v0, p0, Lpa/n0;->a:Lva/d;

    goto :goto_4

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lva/c;->c()Lva/d;

    move-result-object v0

    iput-object v0, p0, Lpa/n0;->a:Lva/d;

    .line 30
    throw p1

    .line 31
    :goto_4
    throw p1

    :cond_5
    if-ne v4, v1, :cond_6

    .line 32
    iget-object p1, p0, Lpa/n0;->b:Lva/s;

    invoke-interface {p1}, Lva/s;->i()Lva/h0;

    move-result-object p1

    iput-object p1, p0, Lpa/n0;->b:Lva/s;

    .line 33
    :cond_6
    :try_start_3
    invoke-virtual {v2}, Ld3/e;->k()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 34
    :catch_3
    invoke-virtual {v0}, Lva/c;->c()Lva/d;

    move-result-object p1

    iput-object p1, p0, Lpa/n0;->a:Lva/d;

    return-void

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lva/c;->c()Lva/d;

    move-result-object v0

    iput-object v0, p0, Lpa/n0;->a:Lva/d;

    .line 35
    throw p1
.end method


# virtual methods
.method public final a()I
    .locals 4

    .line 1
    iget v0, p0, Lpa/n0;->d:I

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
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    iget-object v2, p0, Lpa/n0;->b:Lva/s;

    .line 10
    .line 11
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-ge v0, v2, :cond_1

    .line 16
    .line 17
    iget-object v2, p0, Lpa/n0;->b:Lva/s;

    .line 18
    .line 19
    invoke-interface {v2, v0}, Lva/s;->h(I)Lva/d;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Lva/d;->size()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-static {v3}, Ld3/e;->h(I)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-virtual {v2}, Lva/d;->size()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    add-int/2addr v2, v3

    .line 36
    add-int/2addr v1, v2

    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object v0, p0, Lpa/n0;->b:Lva/s;

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    add-int/2addr v0, v1

    .line 47
    iget-object v1, p0, Lpa/n0;->a:Lva/d;

    .line 48
    .line 49
    invoke-virtual {v1}, Lva/d;->size()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    add-int/2addr v1, v0

    .line 54
    iput v1, p0, Lpa/n0;->d:I

    .line 55
    .line 56
    return v1
.end method

.method public final b()Lva/i;
    .locals 2

    .line 1
    new-instance v0, Lpa/o;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Lpa/o;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sget-object v1, Lva/r;->b:Lva/h0;

    .line 8
    .line 9
    iput-object v1, v0, Lpa/o;->d:Ljava/util/List;

    .line 10
    .line 11
    return-object v0
.end method

.method public final c()Lva/i;
    .locals 2

    .line 1
    new-instance v0, Lpa/o;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Lpa/o;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sget-object v1, Lva/r;->b:Lva/h0;

    .line 8
    .line 9
    iput-object v1, v0, Lpa/o;->d:Ljava/util/List;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Lpa/o;->j(Lpa/n0;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public final d(Ld3/e;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lpa/n0;->a()I

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, Lpa/n0;->b:Lva/s;

    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ge v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lpa/n0;->b:Lva/s;

    .line 14
    .line 15
    invoke-interface {v1, v0}, Lva/s;->h(I)Lva/d;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x2

    .line 20
    const/4 v3, 0x1

    .line 21
    invoke-virtual {p1, v3, v2}, Ld3/e;->L(II)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lva/d;->size()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {p1, v2}, Ld3/e;->J(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v1}, Ld3/e;->F(Lva/d;)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, p0, Lpa/n0;->a:Lva/d;

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Ld3/e;->F(Lva/d;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lpa/n0;->c:B

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
    iput-byte v1, p0, Lpa/n0;->c:B

    .line 8
    .line 9
    return v1
.end method
