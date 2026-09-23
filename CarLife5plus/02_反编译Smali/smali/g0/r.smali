.class public final Lg0/r;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:Lg0/g;

.field public final b:Ljava/util/ArrayList;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public final g:Ljava/util/ArrayList;

.field public h:Ljava/lang/Object;

.field public i:I


# direct methods
.method public constructor <init>(Lg0/g;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lg0/r;->a:Lg0/g;

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lg0/p;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1, v1}, Lg0/p;-><init>(II)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lg0/r;->b:Ljava/util/ArrayList;

    .line 21
    .line 22
    const/4 p1, -0x1

    .line 23
    iput p1, p0, Lg0/r;->f:I

    .line 24
    .line 25
    new-instance p1, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lg0/r;->g:Ljava/util/ArrayList;

    .line 31
    .line 32
    sget-object p1, Ls8/w;->a:Ls8/w;

    .line 33
    .line 34
    iput-object p1, p0, Lg0/r;->h:Ljava/lang/Object;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lg0/r;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-double v0, v0

    .line 6
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 7
    .line 8
    mul-double v0, v0, v2

    .line 9
    .line 10
    iget v2, p0, Lg0/r;->i:I

    .line 11
    .line 12
    int-to-double v2, v2

    .line 13
    div-double/2addr v0, v2

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    double-to-int v0, v0

    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    return v0
.end method

.method public final b(I)Lb4/l;
    .locals 7

    .line 1
    iget v0, p0, Lg0/r;->i:I

    .line 2
    .line 3
    mul-int p1, p1, v0

    .line 4
    .line 5
    new-instance v1, Lb4/l;

    .line 6
    .line 7
    invoke-virtual {p0}, Lg0/r;->d()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    sub-int/2addr v2, p1

    .line 12
    if-le v0, v2, :cond_0

    .line 13
    .line 14
    move v0, v2

    .line 15
    :cond_0
    const/4 v2, 0x0

    .line 16
    if-gez v0, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    :cond_1
    iget-object v3, p0, Lg0/r;->h:Ljava/lang/Object;

    .line 20
    .line 21
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-ne v0, v3, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Lg0/r;->h:Ljava/lang/Object;

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    .line 34
    .line 35
    :goto_0
    if-ge v2, v0, :cond_3

    .line 36
    .line 37
    const/4 v4, 0x1

    .line 38
    int-to-long v4, v4

    .line 39
    new-instance v6, Lg0/b;

    .line 40
    .line 41
    invoke-direct {v6, v4, v5}, Lg0/b;-><init>(J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    add-int/lit8 v2, v2, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    iput-object v3, p0, Lg0/r;->h:Ljava/lang/Object;

    .line 51
    .line 52
    move-object v0, v3

    .line 53
    :goto_1
    invoke-direct {v1, p1, v0}, Lb4/l;-><init>(ILjava/util/List;)V

    .line 54
    .line 55
    .line 56
    return-object v1
.end method

.method public final c(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg0/r;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gtz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lg0/r;->d()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ge p1, v0, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const-string v0, "ItemIndex > total count"

    .line 17
    .line 18
    invoke-static {v0}, Lc0/b;->a(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    iget v0, p0, Lg0/r;->i:I

    .line 22
    .line 23
    div-int/2addr p1, v0

    .line 24
    return p1
.end method

.method public final d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lg0/r;->a:Lg0/g;

    .line 2
    .line 3
    iget-object v0, v0, Lg0/g;->c:Le7/l;

    .line 4
    .line 5
    iget v0, v0, Le7/l;->b:I

    .line 6
    .line 7
    return v0
.end method

.method public final e(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lg0/r;->a:Lg0/g;

    .line 2
    .line 3
    iget-object v0, v0, Lg0/g;->c:Le7/l;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Le7/l;->c(I)Lh0/i;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, v0, Lh0/i;->a:I

    .line 10
    .line 11
    sub-int/2addr p1, v1

    .line 12
    iget-object v0, v0, Lh0/i;->c:Lh0/p;

    .line 13
    .line 14
    check-cast v0, Lg0/f;

    .line 15
    .line 16
    iget-object v0, v0, Lg0/f;->a:Lf9/n;

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    sget-object v1, Lg0/q;->a:Lg0/q;

    .line 23
    .line 24
    invoke-interface {v0, v1, p1}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lg0/b;

    .line 29
    .line 30
    iget-wide v0, p1, Lg0/b;->a:J

    .line 31
    .line 32
    long-to-int p1, v0

    .line 33
    return p1
.end method
