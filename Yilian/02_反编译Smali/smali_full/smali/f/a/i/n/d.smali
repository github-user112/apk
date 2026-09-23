.class public Lf/a/i/n/d;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:[B

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lf/a/i/n/d;)Z
    .locals 1

    iget v0, p0, Lf/a/i/n/d;->b:I

    iget-object p0, p0, Lf/a/i/n/d;->a:[B

    array-length p0, p0

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Lf/a/i/n/d;)I
    .locals 1

    invoke-static {p0}, Lf/a/i/n/d;->f(Lf/a/i/n/d;)I

    move-result p0

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    add-int/lit8 p0, p0, 0x1

    div-int/lit8 p0, p0, 0x2

    goto :goto_0

    :cond_0
    div-int/lit8 p0, p0, 0x2

    neg-int p0, p0

    :goto_0
    return p0
.end method

.method public static c(Lf/a/i/n/d;I)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-static {p0}, Lf/a/i/n/d;->d(Lf/a/i/n/d;)I

    move-result v2

    sub-int v3, p1, v0

    add-int/lit8 v3, v3, -0x1

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static d(Lf/a/i/n/d;)I
    .locals 2

    iget v0, p0, Lf/a/i/n/d;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lf/a/i/n/d;->c:I

    invoke-static {p0}, Lf/a/i/n/d;->a(Lf/a/i/n/d;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lf/a/i/n/d;->a:[B

    iget v1, p0, Lf/a/i/n/d;->b:I

    aget-byte v0, v0, v1

    iget v1, p0, Lf/a/i/n/d;->c:I

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lf/a/i/n/d;->c:I

    if-nez v1, :cond_1

    iget v1, p0, Lf/a/i/n/d;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lf/a/i/n/d;->b:I

    const/16 v1, 0x8

    iput v1, p0, Lf/a/i/n/d;->c:I

    :cond_1
    return v0
.end method

.method public static e(Lf/a/i/n/d;)I
    .locals 2

    iget v0, p0, Lf/a/i/n/d;->c:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lf/a/i/n/d;->a(Lf/a/i/n/d;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lf/a/i/n/d;->a:[B

    iget v1, p0, Lf/a/i/n/d;->b:I

    aget-byte v0, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lf/a/i/n/d;->b:I

    return v0

    :cond_0
    invoke-static {p0, v1}, Lf/a/i/n/d;->c(Lf/a/i/n/d;I)I

    move-result p0

    return p0
.end method

.method public static f(Lf/a/i/n/d;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-static {p0}, Lf/a/i/n/d;->d(Lf/a/i/n/d;)I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    invoke-static {p0}, Lf/a/i/n/d;->a(Lf/a/i/n/d;)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0, v0}, Lf/a/i/n/d;->c(Lf/a/i/n/d;I)I

    move-result p0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    add-int/2addr v0, p0

    return v0
.end method

.method public static g(Lf/a/i/n/d;I)V
    .locals 3

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    if-eqz v0, :cond_0

    invoke-static {p0}, Lf/a/i/n/d;->b(Lf/a/i/n/d;)I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x100

    rem-int/lit16 v0, v0, 0x100

    :cond_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public h(Lf/a/i/n/d;)Landroid/graphics/Point;
    .locals 4

    invoke-static {p1}, Lf/a/i/n/d;->e(Lf/a/i/n/d;)I

    move-result v0

    invoke-static {p1}, Lf/a/i/n/d;->d(Lf/a/i/n/d;)I

    invoke-static {p1}, Lf/a/i/n/d;->d(Lf/a/i/n/d;)I

    invoke-static {p1}, Lf/a/i/n/d;->d(Lf/a/i/n/d;)I

    invoke-static {p1}, Lf/a/i/n/d;->d(Lf/a/i/n/d;)I

    invoke-static {p1}, Lf/a/i/n/d;->d(Lf/a/i/n/d;)I

    invoke-static {p1}, Lf/a/i/n/d;->d(Lf/a/i/n/d;)I

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lf/a/i/n/d;->c(Lf/a/i/n/d;I)I

    invoke-static {p1}, Lf/a/i/n/d;->e(Lf/a/i/n/d;)I

    invoke-static {p1}, Lf/a/i/n/d;->f(Lf/a/i/n/d;)I

    const/4 v1, 0x0

    const/16 v2, 0x10

    const/16 v3, 0x64

    if-eq v0, v3, :cond_0

    const/16 v3, 0x6e

    if-eq v0, v3, :cond_0

    const/16 v3, 0x7a

    if-eq v0, v3, :cond_0

    const/16 v3, 0x90

    if-ne v0, v3, :cond_4

    :cond_0
    invoke-static {p1}, Lf/a/i/n/d;->f(Lf/a/i/n/d;)I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    invoke-static {p1}, Lf/a/i/n/d;->d(Lf/a/i/n/d;)I

    :cond_1
    invoke-static {p1}, Lf/a/i/n/d;->f(Lf/a/i/n/d;)I

    invoke-static {p1}, Lf/a/i/n/d;->f(Lf/a/i/n/d;)I

    invoke-static {p1}, Lf/a/i/n/d;->d(Lf/a/i/n/d;)I

    invoke-static {p1}, Lf/a/i/n/d;->d(Lf/a/i/n/d;)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v0, v3, :cond_4

    invoke-static {p1}, Lf/a/i/n/d;->d(Lf/a/i/n/d;)I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x6

    if-ge v0, v3, :cond_2

    invoke-static {p1, v2}, Lf/a/i/n/d;->g(Lf/a/i/n/d;I)V

    goto :goto_1

    :cond_2
    const/16 v3, 0x40

    invoke-static {p1, v3}, Lf/a/i/n/d;->g(Lf/a/i/n/d;I)V

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lf/a/i/n/d;->f(Lf/a/i/n/d;)I

    invoke-static {p1}, Lf/a/i/n/d;->f(Lf/a/i/n/d;)I

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_5

    invoke-static {p1}, Lf/a/i/n/d;->f(Lf/a/i/n/d;)I

    goto :goto_3

    :cond_5
    if-ne v0, v3, :cond_6

    invoke-static {p1}, Lf/a/i/n/d;->d(Lf/a/i/n/d;)I

    invoke-static {p1}, Lf/a/i/n/d;->b(Lf/a/i/n/d;)I

    invoke-static {p1}, Lf/a/i/n/d;->b(Lf/a/i/n/d;)I

    invoke-static {p1}, Lf/a/i/n/d;->f(Lf/a/i/n/d;)I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_6

    invoke-static {p1}, Lf/a/i/n/d;->b(Lf/a/i/n/d;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    invoke-static {p1}, Lf/a/i/n/d;->f(Lf/a/i/n/d;)I

    invoke-static {p1}, Lf/a/i/n/d;->d(Lf/a/i/n/d;)I

    invoke-static {p1}, Lf/a/i/n/d;->f(Lf/a/i/n/d;)I

    move-result v0

    invoke-static {p1}, Lf/a/i/n/d;->f(Lf/a/i/n/d;)I

    move-result p1

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x10

    iput v0, v1, Landroid/graphics/Point;->x:I

    add-int/2addr p1, v3

    mul-int/lit8 p1, p1, 0x10

    iput p1, v1, Landroid/graphics/Point;->y:I

    return-object v1
.end method
