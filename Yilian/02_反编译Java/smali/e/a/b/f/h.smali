.class public Le/a/b/f/h;
.super Le/a/b/f/d;
.source ""


# instance fields
.field public final c:Le/a/b/f/f;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Le/a/b/f/d;-><init>(I)V

    new-instance v0, Le/a/b/f/f;

    invoke-direct {v0, p1}, Le/a/b/f/f;-><init>(I)V

    iput-object v0, p0, Le/a/b/f/h;->c:Le/a/b/f/f;

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 3

    iget-object v0, p0, Le/a/b/f/h;->c:Le/a/b/f/f;

    .line 1
    iget v0, v0, Le/a/b/f/f;->c:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/a/b/f/h;->c:Le/a/b/f/f;

    invoke-virtual {v1, v0}, Le/a/b/f/f;->g(I)I

    move-result v1

    if-gez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Le/a/b/f/h;->c:Le/a/b/f/f;

    if-eqz v1, :cond_3

    if-ltz v0, :cond_2

    .line 3
    iget v2, v1, Le/a/b/f/f;->c:I

    if-gt v0, v2, :cond_1

    invoke-virtual {v1}, Le/a/b/f/i;->d()V

    iput v0, v1, Le/a/b/f/f;->c:I

    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newSize > size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newSize < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
