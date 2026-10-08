.class public final La/a/b/l/c/c$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La/a/b/l/c/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/b/l/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final b:La/a/b/l/c/c$a;

.field public final synthetic c:La/a/b/l/c/c;


# direct methods
.method public constructor <init>(La/a/b/l/c/c;La/a/b/l/c/c$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/a/b/l/c/c$a;",
            ")V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbacks"

    invoke-static {p2, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, La/a/b/l/c/c$b;->c:La/a/b/l/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, La/a/b/l/c/c$b;->b:La/a/b/l/c/c$a;

    return-void
.end method


# virtual methods
.method public b(La/a/b/l/c/d/c;)V
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, La/a/b/l/c/c$b;->c:La/a/b/l/c/c;

    .line 1
    iget-object v0, v0, La/a/b/l/c/c;->a:La/a/a/a/c;

    .line 2
    new-instance v1, La/a/b/l/c/c$b$a;

    invoke-direct {v1, p0, p1}, La/a/b/l/c/c$b$a;-><init>(La/a/b/l/c/c$b;La/a/b/l/c/d/c;)V

    invoke-interface {v0, v1}, La/a/a/a/c;->C0(Lc/k/a/a;)V

    return-void
.end method

.method public e(La/a/b/l/c/d/c;ILjava/lang/String;)V
    .locals 8

    const-string v0, "source"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessage"

    invoke-static {p3, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, La/a/b/l/c/c$b;->c:La/a/b/l/c/c;

    .line 1
    iget-object v0, v0, La/a/b/l/c/c;->g:La/a/b/l/c/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, La/a/b/l/c/b;->e:La/a/b/l/c/d/c;

    .line 3
    :goto_0
    invoke-static {v0, p1}, Lc/k/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, La/a/b/l/c/c$b;->c:La/a/b/l/c/c;

    .line 4
    iput-object v1, v0, La/a/b/l/c/c;->g:La/a/b/l/c/b;

    .line 5
    :cond_1
    iget-object v3, p0, La/a/b/l/c/c$b;->c:La/a/b/l/c/c;

    .line 6
    iget-object v0, v3, La/a/b/l/c/c;->a:La/a/a/a/c;

    .line 7
    new-instance v1, La/a/b/l/c/c$b$b;

    move-object v2, v1

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, La/a/b/l/c/c$b$b;-><init>(La/a/b/l/c/c;La/a/b/l/c/c$b;La/a/b/l/c/d/c;ILjava/lang/String;)V

    invoke-interface {v0, v1}, La/a/a/a/c;->C0(Lc/k/a/a;)V

    return-void
.end method

.method public j(La/a/b/l/c/d/c;I)V
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, La/a/b/l/c/c$b;->c:La/a/b/l/c/c;

    .line 1
    iget-object v0, v0, La/a/b/l/c/c;->a:La/a/a/a/c;

    .line 2
    new-instance v1, La/a/b/l/c/c$b$e;

    invoke-direct {v1, p0, p1, p2}, La/a/b/l/c/c$b$e;-><init>(La/a/b/l/c/c$b;La/a/b/l/c/d/c;I)V

    invoke-interface {v0, v1}, La/a/a/a/c;->C0(Lc/k/a/a;)V

    return-void
.end method

.method public l(La/a/b/l/c/d/c;Z)V
    .locals 3

    const-string v0, "source"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, La/a/b/l/c/c$b;->c:La/a/b/l/c/c;

    .line 1
    iget-object v0, v0, La/a/b/l/c/c;->g:La/a/b/l/c/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, La/a/b/l/c/b;->e:La/a/b/l/c/d/c;

    .line 3
    :goto_0
    invoke-static {v0, p1}, Lc/k/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, La/a/b/l/c/c$b;->c:La/a/b/l/c/c;

    .line 4
    iput-object v1, v0, La/a/b/l/c/c;->g:La/a/b/l/c/b;

    .line 5
    :cond_1
    iget-object v0, p0, La/a/b/l/c/c$b;->c:La/a/b/l/c/c;

    .line 6
    iget-object v1, v0, La/a/b/l/c/c;->a:La/a/a/a/c;

    .line 7
    new-instance v2, La/a/b/l/c/c$b$c;

    invoke-direct {v2, v0, p0, p1, p2}, La/a/b/l/c/c$b$c;-><init>(La/a/b/l/c/c;La/a/b/l/c/c$b;La/a/b/l/c/d/c;Z)V

    invoke-interface {v1, v2}, La/a/a/a/c;->C0(Lc/k/a/a;)V

    return-void
.end method

.method public s(La/a/b/l/c/d/c;JJ)V
    .locals 9

    const-string v0, "source"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, La/a/b/l/c/c$b;->c:La/a/b/l/c/c;

    .line 1
    iget-object v0, v0, La/a/b/l/c/c;->a:La/a/a/a/c;

    .line 2
    new-instance v8, La/a/b/l/c/c$b$d;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, La/a/b/l/c/c$b$d;-><init>(La/a/b/l/c/c$b;La/a/b/l/c/d/c;JJ)V

    invoke-interface {v0, v8}, La/a/a/a/c;->C0(Lc/k/a/a;)V

    return-void
.end method
