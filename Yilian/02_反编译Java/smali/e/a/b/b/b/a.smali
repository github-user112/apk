.class public final Le/a/b/b/b/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:[Le/a/b/b/b/e;

.field public final b:[Le/a/b/b/b/e;

.field public final c:[Le/a/b/b/b/e;


# direct methods
.method public constructor <init>(Le/a/b/d/b/o;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iget-object v0, p1, Le/a/b/d/b/o;->a:Le/a/b/d/b/b;

    .line 2
    invoke-virtual {v0}, Le/a/b/f/h;->i()I

    move-result v0

    new-array v1, v0, [Le/a/b/b/b/e;

    iput-object v1, p0, Le/a/b/b/b/a;->a:[Le/a/b/b/b/e;

    new-array v1, v0, [Le/a/b/b/b/e;

    iput-object v1, p0, Le/a/b/b/b/a;->b:[Le/a/b/b/b/e;

    new-array v0, v0, [Le/a/b/b/b/e;

    iput-object v0, p0, Le/a/b/b/b/a;->c:[Le/a/b/b/b/e;

    .line 3
    iget-object p1, p1, Le/a/b/d/b/o;->a:Le/a/b/d/b/b;

    .line 4
    iget-object v0, p1, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 5
    invoke-virtual {p1, v2}, Le/a/b/d/b/b;->k(I)Le/a/b/d/b/a;

    move-result-object v3

    .line 6
    iget v4, v3, Le/a/b/d/b/a;->a:I

    .line 7
    iget-object v5, v3, Le/a/b/d/b/a;->b:Le/a/b/d/b/f;

    .line 8
    invoke-virtual {v5, v1}, Le/a/b/d/b/f;->i(I)Le/a/b/d/b/e;

    move-result-object v5

    iget-object v6, p0, Le/a/b/b/b/a;->a:[Le/a/b/b/b/e;

    new-instance v7, Le/a/b/b/b/e;

    .line 9
    iget-object v5, v5, Le/a/b/d/b/e;->b:Le/a/b/d/b/q;

    .line 10
    invoke-direct {v7, v5}, Le/a/b/b/b/e;-><init>(Le/a/b/d/b/q;)V

    aput-object v7, v6, v4

    invoke-virtual {v3}, Le/a/b/d/b/a;->b()Le/a/b/d/b/e;

    move-result-object v3

    .line 11
    iget-object v3, v3, Le/a/b/d/b/e;->b:Le/a/b/d/b/q;

    .line 12
    iget-object v5, p0, Le/a/b/b/b/a;->b:[Le/a/b/b/b/e;

    new-instance v6, Le/a/b/b/b/e;

    invoke-direct {v6, v3}, Le/a/b/b/b/e;-><init>(Le/a/b/d/b/q;)V

    aput-object v6, v5, v4

    iget-object v5, p0, Le/a/b/b/b/a;->c:[Le/a/b/b/b/e;

    new-instance v6, Le/a/b/b/b/e;

    invoke-direct {v6, v3}, Le/a/b/b/b/e;-><init>(Le/a/b/d/b/q;)V

    aput-object v6, v5, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
