.class public Le/a/b/e/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Le/a/b/f/f;

.field public b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/a/b/f/f;

    invoke-direct {v0, p1}, Le/a/b/f/f;-><init>(I)V

    iput-object v0, p0, Le/a/b/e/a;->a:Le/a/b/f/f;

    return-void
.end method


# virtual methods
.method public a(III)V
    .locals 3

    iget-object v0, p0, Le/a/b/e/a;->a:Le/a/b/f/f;

    .line 1
    iget v0, v0, Le/a/b/f/f;->c:I

    if-lt p1, v0, :cond_0

    sub-int v0, p1, v0

    :goto_0
    if-ltz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/a/b/e/a;->a:Le/a/b/f/f;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Le/a/b/f/f;->f(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/a/b/e/a;->a:Le/a/b/f/f;

    invoke-virtual {v0, p1, p2}, Le/a/b/f/f;->h(II)V

    iget p1, p0, Le/a/b/e/a;->b:I

    add-int/2addr p2, p3

    if-ge p1, p2, :cond_1

    iput p2, p0, Le/a/b/e/a;->b:I

    :cond_1
    return-void
.end method

.method public b(Le/a/b/d/b/k;)Le/a/b/d/b/k;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    :try_start_0
    iget-object v0, p0, Le/a/b/e/a;->a:Le/a/b/f/f;

    .line 1
    iget v1, p1, Le/a/b/d/b/k;->a:I

    .line 2
    invoke-virtual {v0, v1}, Le/a/b/f/f;->g(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p1, v0}, Le/a/b/d/b/k;->o(I)Le/a/b/d/b/k;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "no mapping specified for register"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
