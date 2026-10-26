.class public final Le/a/b/d/c/c;
.super Le/a/b/d/c/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/b/d/c/c$a;
    }
.end annotation


# instance fields
.field public final a:Le/a/b/d/c/c$a;


# direct methods
.method public constructor <init>(Le/a/b/d/c/c$a;)V
    .locals 0

    invoke-direct {p0}, Le/a/b/d/c/a;-><init>()V

    invoke-virtual {p1}, Le/a/b/f/i;->e()V

    iput-object p1, p0, Le/a/b/d/c/c;->a:Le/a/b/d/c/c$a;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Le/a/b/d/c/c;->a:Le/a/b/d/c/c$a;

    const-string v1, "{"

    const-string v2, ", "

    const-string v3, "}"

    const/4 v4, 0x1

    .line 1
    invoke-virtual {v0, v1, v2, v3, v4}, Le/a/b/f/d;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Le/a/b/d/c/a;)I
    .locals 1

    iget-object v0, p0, Le/a/b/d/c/c;->a:Le/a/b/d/c/c$a;

    check-cast p1, Le/a/b/d/c/c;

    iget-object p1, p1, Le/a/b/d/c/c;->a:Le/a/b/d/c/c$a;

    invoke-virtual {v0, p1}, Le/a/b/d/c/c$a;->i(Le/a/b/d/c/c$a;)I

    move-result p1

    return p1
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "array"

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Le/a/b/d/c/c;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Le/a/b/d/c/c;->a:Le/a/b/d/c/c$a;

    check-cast p1, Le/a/b/d/c/c;

    iget-object p1, p1, Le/a/b/d/c/c;->a:Le/a/b/d/c/c$a;

    invoke-virtual {v0, p1}, Le/a/b/f/d;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Le/a/b/d/c/c;->a:Le/a/b/d/c/c$a;

    invoke-virtual {v0}, Le/a/b/f/d;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Le/a/b/d/c/c;->a:Le/a/b/d/c/c$a;

    const/4 v1, 0x0

    const-string v2, "array{"

    const-string v3, ", "

    const-string v4, "}"

    .line 1
    invoke-virtual {v0, v2, v3, v4, v1}, Le/a/b/f/d;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
