.class public Le/a/b/d/b/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/b/d/b/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/b/d/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Le/a/b/d/b/b$a;->a:I

    return-void
.end method


# virtual methods
.method public a(Le/a/b/d/b/j;)V
    .locals 0

    invoke-virtual {p0, p1}, Le/a/b/d/b/b$a;->e(Le/a/b/d/b/e;)V

    return-void
.end method

.method public b(Le/a/b/d/b/i;)V
    .locals 0

    invoke-virtual {p0, p1}, Le/a/b/d/b/b$a;->e(Le/a/b/d/b/e;)V

    return-void
.end method

.method public c(Le/a/b/d/b/s;)V
    .locals 0

    invoke-virtual {p0, p1}, Le/a/b/d/b/b$a;->e(Le/a/b/d/b/e;)V

    return-void
.end method

.method public d(Le/a/b/d/b/r;)V
    .locals 0

    invoke-virtual {p0, p1}, Le/a/b/d/b/b$a;->e(Le/a/b/d/b/e;)V

    return-void
.end method

.method public final e(Le/a/b/d/b/e;)V
    .locals 4

    .line 1
    iget-object v0, p1, Le/a/b/d/b/e;->c:Le/a/b/d/b/k;

    if-eqz v0, :cond_0

    .line 2
    iget v1, v0, Le/a/b/d/b/k;->a:I

    invoke-virtual {v0}, Le/a/b/d/b/k;->h()I

    move-result v0

    add-int/2addr v0, v1

    .line 3
    iget v1, p0, Le/a/b/d/b/b$a;->a:I

    if-le v0, v1, :cond_0

    iput v0, p0, Le/a/b/d/b/b$a;->a:I

    .line 4
    :cond_0
    iget-object p1, p1, Le/a/b/d/b/e;->d:Le/a/b/d/b/l;

    .line 5
    iget-object v0, p1, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 6
    invoke-virtual {p1, v1}, Le/a/b/d/b/l;->i(I)Le/a/b/d/b/k;

    move-result-object v2

    .line 7
    iget v3, v2, Le/a/b/d/b/k;->a:I

    invoke-virtual {v2}, Le/a/b/d/b/k;->h()I

    move-result v2

    add-int/2addr v2, v3

    .line 8
    iget v3, p0, Le/a/b/d/b/b$a;->a:I

    if-le v2, v3, :cond_1

    iput v2, p0, Le/a/b/d/b/b$a;->a:I

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
