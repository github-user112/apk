.class public final Le/a/b/b/b/v;
.super Le/a/b/d/b/e$a;
.source ""


# instance fields
.field public final synthetic a:[Z

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public constructor <init>([ZII)V
    .locals 0

    iput-object p1, p0, Le/a/b/b/b/v;->a:[Z

    iput p2, p0, Le/a/b/b/b/v;->b:I

    iput p3, p0, Le/a/b/b/b/v;->c:I

    invoke-direct {p0}, Le/a/b/d/b/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Le/a/b/d/b/i;)V
    .locals 5

    .line 1
    iget-object v0, p1, Le/a/b/d/b/e;->a:Le/a/b/d/b/n;

    .line 2
    iget v0, v0, Le/a/b/d/b/n;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p1, Le/a/b/d/b/c;->e:Le/a/b/d/c/a;

    .line 4
    check-cast v0, Le/a/b/d/c/l;

    .line 5
    iget v0, v0, Le/a/b/d/c/n;->a:I

    .line 6
    iget-object v1, p0, Le/a/b/b/b/v;->a:[Z

    const/4 v2, 0x0

    aget-boolean v3, v1, v2

    if-eqz v3, :cond_0

    iget v3, p0, Le/a/b/b/b/v;->b:I

    iget v4, p0, Le/a/b/b/b/v;->c:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v0

    .line 7
    iget-object p1, p1, Le/a/b/d/b/e;->c:Le/a/b/d/b/k;

    .line 8
    iget p1, p1, Le/a/b/d/b/k;->a:I

    if-ne v3, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    aput-boolean p1, v1, v2

    :cond_1
    return-void
.end method
