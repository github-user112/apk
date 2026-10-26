.class public final Le/a/b/b/b/e;
.super Le/a/b/b/b/a0;
.source ""


# instance fields
.field public final e:Z


# direct methods
.method public constructor <init>(Le/a/b/d/b/q;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/a/b/b/b/a0;-><init>(Le/a/b/d/b/q;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Le/a/b/b/b/e;->e:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e(Z)Ljava/lang/String;
    .locals 0

    const-string p1, "code-address"

    return-object p1
.end method

.method public final j(Le/a/b/d/b/l;)Le/a/b/b/b/h;
    .locals 1

    new-instance p1, Le/a/b/b/b/e;

    .line 1
    iget-object v0, p0, Le/a/b/b/b/h;->c:Le/a/b/d/b/q;

    .line 2
    invoke-direct {p1, v0}, Le/a/b/b/b/e;-><init>(Le/a/b/d/b/q;)V

    return-object p1
.end method
