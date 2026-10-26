.class public Le/c/b/b/n;
.super Ljava/util/AbstractMap;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/c/b/b/n$e;,
        Le/c/b/b/n$d;,
        Le/c/b/b/n$a;,
        Le/c/b/b/n$c;,
        Le/c/b/b/n$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public transient a:[I
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field public transient b:[J
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field public transient c:[Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field public transient d:[Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field public transient e:F

.field public transient f:I

.field public transient g:I

.field public transient h:I

.field public transient i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field public transient j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field public transient k:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Initial capacity must be non-negative"

    .line 2
    invoke-static {v1, v2}, Le/c/b/a/f;->b(ZLjava/lang/Object;)V

    const-string v1, "Illegal load factor"

    invoke-static {v0, v1}, Le/c/b/a/f;->b(ZLjava/lang/Object;)V

    const/high16 v1, 0x3f800000    # 1.0f

    float-to-double v2, v1

    const/4 v4, 0x2

    .line 3
    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v5

    int-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v6

    double-to-int v2, v2

    if-le v4, v2, :cond_2

    shl-int/lit8 v5, v5, 0x1

    if-lez v5, :cond_1

    goto :goto_1

    :cond_1
    const/high16 v5, 0x40000000    # 2.0f

    .line 4
    :cond_2
    :goto_1
    new-array v2, v5, [I

    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 5
    iput-object v2, p0, Le/c/b/b/n;->a:[I

    iput v1, p0, Le/c/b/b/n;->e:F

    new-array v2, p1, [Ljava/lang/Object;

    iput-object v2, p0, Le/c/b/b/n;->c:[Ljava/lang/Object;

    new-array v2, p1, [Ljava/lang/Object;

    iput-object v2, p0, Le/c/b/b/n;->d:[Ljava/lang/Object;

    .line 6
    new-array p1, p1, [J

    const-wide/16 v2, -0x1

    invoke-static {p1, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 7
    iput-object p1, p0, Le/c/b/b/n;->b:[J

    int-to-float p1, v5

    mul-float p1, p1, v1

    float-to-int p1, p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Le/c/b/b/n;->g:I

    return-void
.end method

.method public static a(Le/c/b/b/n;I)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Le/c/b/b/n;->c:[Ljava/lang/Object;

    aget-object v0, v0, p1

    iget-object v1, p0, Le/c/b/b/n;->b:[J

    aget-wide v2, v1, p1

    invoke-static {v2, v3}, Le/c/b/b/n;->c(J)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Le/c/b/b/n;->f(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Le/c/b/b/n;Ljava/lang/Object;)I
    .locals 0

    invoke-virtual {p0, p1}, Le/c/b/b/n;->e(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static c(J)I
    .locals 1

    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method public static g(JI)J
    .locals 4

    const-wide v0, -0x100000000L

    and-long/2addr p0, v0

    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public clear()V
    .locals 5

    iget v0, p0, Le/c/b/b/n;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le/c/b/b/n;->f:I

    iget-object v0, p0, Le/c/b/b/n;->c:[Ljava/lang/Object;

    iget v1, p0, Le/c/b/b/n;->h:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget-object v0, p0, Le/c/b/b/n;->d:[Ljava/lang/Object;

    iget v1, p0, Le/c/b/b/n;->h:I

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget-object v0, p0, Le/c/b/b/n;->a:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Le/c/b/b/n;->b:[J

    const-wide/16 v3, -0x1

    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->fill([JJ)V

    iput v2, p0, Le/c/b/b/n;->h:I

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Le/c/b/b/n;->e(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Le/c/b/b/n;->h:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Le/c/b/b/n;->d:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Le/c/b/a/f;->h(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Le/c/b/b/n;->a:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final e(Ljava/lang/Object;)I
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    invoke-static {p1}, Le/c/b/a/f;->q(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Le/c/b/b/n;->a:[I

    invoke-virtual {p0}, Le/c/b/b/n;->d()I

    move-result v2

    and-int/2addr v2, v0

    aget v1, v1, v2

    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Le/c/b/b/n;->b:[J

    aget-wide v3, v2, v1

    invoke-static {v3, v4}, Le/c/b/b/n;->c(J)I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Le/c/b/b/n;->c:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Le/c/b/a/f;->h(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    long-to-int v1, v3

    goto :goto_0

    :cond_1
    return v2
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Le/c/b/b/n;->j:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1
    new-instance v0, Le/c/b/b/n$a;

    invoke-direct {v0, p0}, Le/c/b/b/n$a;-><init>(Le/c/b/b/n;)V

    .line 2
    iput-object v0, p0, Le/c/b/b/n;->j:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public final f(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 10
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    invoke-virtual {p0}, Le/c/b/b/n;->d()I

    move-result v0

    and-int/2addr v0, p2

    iget-object v1, p0, Le/c/b/b/n;->a:[I

    aget v1, v1, v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    return-object v2

    :cond_0
    const/4 v4, -0x1

    :goto_0
    iget-object v5, p0, Le/c/b/b/n;->b:[J

    aget-wide v6, v5, v1

    invoke-static {v6, v7}, Le/c/b/b/n;->c(J)I

    move-result v5

    if-ne v5, p2, :cond_5

    iget-object v5, p0, Le/c/b/b/n;->c:[Ljava/lang/Object;

    aget-object v5, v5, v1

    invoke-static {p1, v5}, Le/c/b/a/f;->h(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object p1, p0, Le/c/b/b/n;->d:[Ljava/lang/Object;

    aget-object p1, p1, v1

    if-ne v4, v3, :cond_1

    iget-object p2, p0, Le/c/b/b/n;->a:[I

    iget-object v4, p0, Le/c/b/b/n;->b:[J

    aget-wide v5, v4, v1

    long-to-int v4, v5

    aput v4, p2, v0

    goto :goto_1

    :cond_1
    iget-object p2, p0, Le/c/b/b/n;->b:[J

    aget-wide v5, p2, v4

    aget-wide v7, p2, v1

    long-to-int v0, v7

    invoke-static {v5, v6, v0}, Le/c/b/b/n;->g(JI)J

    move-result-wide v5

    aput-wide v5, p2, v4

    .line 1
    :goto_1
    iget p2, p0, Le/c/b/b/n;->h:I

    add-int/2addr p2, v3

    const-wide/16 v3, -0x1

    if-ge v1, p2, :cond_4

    .line 2
    iget-object v0, p0, Le/c/b/b/n;->c:[Ljava/lang/Object;

    aget-object v5, v0, p2

    aput-object v5, v0, v1

    iget-object v5, p0, Le/c/b/b/n;->d:[Ljava/lang/Object;

    aget-object v6, v5, p2

    aput-object v6, v5, v1

    aput-object v2, v0, p2

    aput-object v2, v5, p2

    iget-object v0, p0, Le/c/b/b/n;->b:[J

    aget-wide v5, v0, p2

    aput-wide v5, v0, v1

    aput-wide v3, v0, p2

    invoke-static {v5, v6}, Le/c/b/b/n;->c(J)I

    move-result v0

    invoke-virtual {p0}, Le/c/b/b/n;->d()I

    move-result v2

    and-int/2addr v0, v2

    iget-object v2, p0, Le/c/b/b/n;->a:[I

    aget v3, v2, v0

    if-ne v3, p2, :cond_2

    aput v1, v2, v0

    goto :goto_3

    :cond_2
    :goto_2
    iget-object v0, p0, Le/c/b/b/n;->b:[J

    aget-wide v4, v0, v3

    long-to-int v2, v4

    if-ne v2, p2, :cond_3

    invoke-static {v4, v5, v1}, Le/c/b/b/n;->g(JI)J

    move-result-wide v1

    aput-wide v1, v0, v3

    goto :goto_3

    :cond_3
    move v3, v2

    goto :goto_2

    :cond_4
    iget-object p2, p0, Le/c/b/b/n;->c:[Ljava/lang/Object;

    aput-object v2, p2, v1

    iget-object p2, p0, Le/c/b/b/n;->d:[Ljava/lang/Object;

    aput-object v2, p2, v1

    iget-object p2, p0, Le/c/b/b/n;->b:[J

    aput-wide v3, p2, v1

    .line 3
    :goto_3
    iget p2, p0, Le/c/b/b/n;->h:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Le/c/b/b/n;->h:I

    iget p2, p0, Le/c/b/b/n;->f:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Le/c/b/b/n;->f:I

    return-object p1

    :cond_5
    iget-object v4, p0, Le/c/b/b/n;->b:[J

    aget-wide v5, v4, v1

    long-to-int v4, v5

    if-ne v4, v3, :cond_6

    return-object v2

    :cond_6
    move v9, v4

    move v4, v1

    move v1, v9

    goto/16 :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Le/c/b/b/n;->e(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/c/b/b/n;->d:[Ljava/lang/Object;

    aget-object p1, v0, p1

    :goto_0
    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Le/c/b/b/n;->h:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Le/c/b/b/n;->i:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1
    new-instance v0, Le/c/b/b/n$c;

    invoke-direct {v0, p0}, Le/c/b/b/n$c;-><init>(Le/c/b/b/n;)V

    .line 2
    iput-object v0, p0, Le/c/b/b/n;->i:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    iget-object v0, p0, Le/c/b/b/n;->b:[J

    iget-object v1, p0, Le/c/b/b/n;->c:[Ljava/lang/Object;

    iget-object v2, p0, Le/c/b/b/n;->d:[Ljava/lang/Object;

    invoke-static {p1}, Le/c/b/a/f;->q(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0}, Le/c/b/b/n;->d()I

    move-result v4

    and-int/2addr v4, v3

    iget v5, p0, Le/c/b/b/n;->h:I

    iget-object v6, p0, Le/c/b/b/n;->a:[I

    aget v7, v6, v4

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    aput v5, v6, v4

    goto :goto_1

    :cond_0
    :goto_0
    aget-wide v9, v0, v7

    invoke-static {v9, v10}, Le/c/b/b/n;->c(J)I

    move-result v4

    if-ne v4, v3, :cond_1

    aget-object v4, v1, v7

    invoke-static {p1, v4}, Le/c/b/a/f;->h(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    aget-object p1, v2, v7

    aput-object p2, v2, v7

    return-object p1

    :cond_1
    long-to-int v4, v9

    if-ne v4, v8, :cond_9

    invoke-static {v9, v10, v5}, Le/c/b/b/n;->g(JI)J

    move-result-wide v1

    aput-wide v1, v0, v7

    :goto_1
    const v0, 0x7fffffff

    if-eq v5, v0, :cond_8

    add-int/lit8 v1, v5, 0x1

    .line 1
    iget-object v2, p0, Le/c/b/b/n;->b:[J

    array-length v2, v2

    const/4 v4, 0x1

    if-le v1, v2, :cond_4

    ushr-int/lit8 v6, v2, 0x1

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v6, v2

    if-gez v6, :cond_2

    const v6, 0x7fffffff

    :cond_2
    if-eq v6, v2, :cond_4

    .line 2
    iget-object v2, p0, Le/c/b/b/n;->c:[Ljava/lang/Object;

    invoke-static {v2, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Le/c/b/b/n;->c:[Ljava/lang/Object;

    iget-object v2, p0, Le/c/b/b/n;->d:[Ljava/lang/Object;

    invoke-static {v2, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Le/c/b/b/n;->d:[Ljava/lang/Object;

    iget-object v2, p0, Le/c/b/b/n;->b:[J

    array-length v7, v2

    invoke-static {v2, v6}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    if-le v6, v7, :cond_3

    const-wide/16 v9, -0x1

    invoke-static {v2, v7, v6, v9, v10}, Ljava/util/Arrays;->fill([JIIJ)V

    :cond_3
    iput-object v2, p0, Le/c/b/b/n;->b:[J

    .line 3
    :cond_4
    iget-object v2, p0, Le/c/b/b/n;->b:[J

    int-to-long v6, v3

    const/16 v3, 0x20

    shl-long/2addr v6, v3

    const-wide v9, 0xffffffffL

    or-long/2addr v6, v9

    aput-wide v6, v2, v5

    iget-object v2, p0, Le/c/b/b/n;->c:[Ljava/lang/Object;

    aput-object p1, v2, v5

    iget-object p1, p0, Le/c/b/b/n;->d:[Ljava/lang/Object;

    aput-object p2, p1, v5

    .line 4
    iput v1, p0, Le/c/b/b/n;->h:I

    iget p1, p0, Le/c/b/b/n;->g:I

    if-lt v5, p1, :cond_7

    iget-object p1, p0, Le/c/b/b/n;->a:[I

    array-length p2, p1

    mul-int/lit8 p2, p2, 0x2

    .line 5
    array-length p1, p1

    const/high16 v1, 0x40000000    # 2.0f

    if-lt p1, v1, :cond_5

    iput v0, p0, Le/c/b/b/n;->g:I

    goto :goto_3

    :cond_5
    int-to-float p1, p2

    iget v0, p0, Le/c/b/b/n;->e:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    add-int/2addr p1, v4

    .line 6
    new-array v0, p2, [I

    invoke-static {v0, v8}, Ljava/util/Arrays;->fill([II)V

    .line 7
    iget-object v1, p0, Le/c/b/b/n;->b:[J

    add-int/2addr p2, v8

    const/4 v2, 0x0

    :goto_2
    iget v5, p0, Le/c/b/b/n;->h:I

    if-ge v2, v5, :cond_6

    aget-wide v5, v1, v2

    invoke-static {v5, v6}, Le/c/b/b/n;->c(J)I

    move-result v5

    and-int v6, v5, p2

    aget v7, v0, v6

    aput v2, v0, v6

    int-to-long v5, v5

    shl-long/2addr v5, v3

    int-to-long v7, v7

    and-long/2addr v7, v9

    or-long/2addr v5, v7

    aput-wide v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    iput p1, p0, Le/c/b/b/n;->g:I

    iput-object v0, p0, Le/c/b/b/n;->a:[I

    .line 8
    :cond_7
    :goto_3
    iget p1, p0, Le/c/b/b/n;->f:I

    add-int/2addr p1, v4

    iput p1, p0, Le/c/b/b/n;->f:I

    const/4 p1, 0x0

    return-object p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot contain more than Integer.MAX_VALUE elements!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    move v7, v4

    goto/16 :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    invoke-static {p1}, Le/c/b/a/f;->q(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Le/c/b/b/n;->f(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Le/c/b/b/n;->h:I

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Le/c/b/b/n;->k:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 1
    new-instance v0, Le/c/b/b/n$e;

    invoke-direct {v0, p0}, Le/c/b/b/n$e;-><init>(Le/c/b/b/n;)V

    .line 2
    iput-object v0, p0, Le/c/b/b/n;->k:Ljava/util/Collection;

    :cond_0
    return-object v0
.end method
