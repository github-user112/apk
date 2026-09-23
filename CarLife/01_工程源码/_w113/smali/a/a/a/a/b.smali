.class public final synthetic La/a/a/a/b;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(La/a/a/a/c;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, La/a/a/a/c;->Y(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public static b(La/a/a/a/c;)V
    .locals 0

    invoke-interface {p0, p0}, La/a/a/a/h;->o(La/a/a/a/c;)V

    return-void
.end method

.method public static c(La/a/a/a/c;)V
    .locals 0

    invoke-interface {p0, p0}, La/a/a/a/h;->O(La/a/a/a/c;)V

    return-void
.end method

.method public static d(La/a/a/a/c;)V
    .locals 0

    invoke-interface {p0, p0}, La/a/a/a/h;->F0(La/a/a/a/c;)V

    return-void
.end method

.method public static e(La/a/a/a/c;)V
    .locals 0

    invoke-interface {p0, p0}, La/a/a/a/h;->c0(La/a/a/a/c;)V

    return-void
.end method

.method public static f(La/a/a/a/c;)V
    .locals 0

    invoke-interface {p0, p0}, La/a/a/a/h;->b0(La/a/a/a/c;)V

    return-void
.end method

.method public static g(La/a/a/a/c;Ljava/lang/Runnable;J)V
    .locals 1

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, La/a/a/a/b$a;

    invoke-direct {v0, p1}, La/a/a/a/b$a;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {p0, p2, p3, v0}, La/a/a/a/c;->L(JLc/k/a/a;)V

    return-void
.end method

.method public static h(La/a/a/a/c;II)V
    .locals 3

    sget-object v0, La/a/a/a/a/a/b;->b:La/a/a/a/a/a/b$a;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, p1, p2, v1, v2}, La/a/a/a/a/a/b$a;->b(La/a/a/a/a/a/b$a;ILjava/lang/Integer;II)La/a/a/a/a/a/b;

    move-result-object p1

    invoke-interface {p0, p1}, La/a/a/a/c;->K0(La/a/a/a/a/a/b;)V

    return-void
.end method
