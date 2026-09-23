.class public La/c/a/p$i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La/c/a/p$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/c/a/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# static fields
.field public static final a:La/c/a/p$i;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, La/c/a/p$i;

    invoke-direct {v0}, La/c/a/p$i;-><init>()V

    sput-object v0, La/c/a/p$i;->a:La/c/a/p$i;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La/c/a/r$e;La/c/a/r$e;)La/c/a/r$e;
    .locals 3

    move-object v0, p1

    check-cast v0, La/c/a/o;

    .line 1
    iget v0, v0, La/c/a/o;->e:I

    .line 2
    move-object v1, p2

    check-cast v1, La/c/a/o;

    .line 3
    iget v1, v1, La/c/a/o;->e:I

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    .line 4
    move-object v2, p1

    check-cast v2, La/c/a/c;

    .line 5
    iget-boolean v2, v2, La/c/a/c;->b:Z

    if-nez v2, :cond_0

    add-int/2addr v1, v0

    .line 6
    check-cast p1, La/c/a/o;

    invoke-virtual {p1, v1}, La/c/a/o;->h(I)La/c/a/r$e;

    move-result-object p1

    :cond_0
    check-cast p1, La/c/a/o;

    invoke-virtual {p1, p2}, La/c/a/o;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-lez v0, :cond_2

    move-object p2, p1

    :cond_2
    return-object p2
.end method

.method public b(La/c/a/r$h;La/c/a/r$h;)La/c/a/r$h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "La/c/a/r$h<",
            "TT;>;",
            "La/c/a/r$h<",
            "TT;>;)",
            "La/c/a/r$h<",
            "TT;>;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    move-object v2, p1

    check-cast v2, La/c/a/c;

    .line 1
    iget-boolean v2, v2, La/c/a/c;->b:Z

    if-nez v2, :cond_0

    add-int/2addr v1, v0

    .line 2
    invoke-interface {p1, v1}, La/c/a/r$h;->a(I)La/c/a/r$h;

    move-result-object p1

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-lez v0, :cond_2

    move-object p2, p1

    :cond_2
    return-object p2
.end method

.method public c(La/c/a/e0;La/c/a/e0;)La/c/a/e0;
    .locals 1

    sget-object v0, La/c/a/e0;->a:La/c/a/e0;

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, La/c/a/e0;->d(La/c/a/e0;La/c/a/e0;)La/c/a/e0;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p3, :cond_0

    move-object p2, p4

    :cond_0
    return-object p2
.end method

.method public e(ZZZZ)Z
    .locals 0

    if-eqz p3, :cond_0

    move p2, p4

    :cond_0
    return p2
.end method

.method public f(La/c/a/r$f;La/c/a/r$f;)La/c/a/r$f;
    .locals 3

    move-object v0, p1

    check-cast v0, La/c/a/q;

    .line 1
    iget v0, v0, La/c/a/q;->e:I

    .line 2
    move-object v1, p2

    check-cast v1, La/c/a/q;

    .line 3
    iget v1, v1, La/c/a/q;->e:I

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    .line 4
    move-object v2, p1

    check-cast v2, La/c/a/c;

    .line 5
    iget-boolean v2, v2, La/c/a/c;->b:Z

    if-nez v2, :cond_0

    add-int/2addr v1, v0

    .line 6
    check-cast p1, La/c/a/q;

    invoke-virtual {p1, v1}, La/c/a/q;->h(I)La/c/a/r$f;

    move-result-object p1

    :cond_0
    check-cast p1, La/c/a/q;

    invoke-virtual {p1, p2}, La/c/a/q;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-lez v0, :cond_2

    move-object p2, p1

    :cond_2
    return-object p2
.end method

.method public g(ZLa/c/a/g;ZLa/c/a/g;)La/c/a/g;
    .locals 0

    if-eqz p3, :cond_0

    move-object p2, p4

    :cond_0
    return-object p2
.end method

.method public h(ZFZF)F
    .locals 0

    if-eqz p3, :cond_0

    move p2, p4

    :cond_0
    return p2
.end method

.method public i(ZJZJ)J
    .locals 0

    if-eqz p4, :cond_0

    move-wide p2, p5

    :cond_0
    return-wide p2
.end method

.method public j(ZDZD)D
    .locals 0

    if-eqz p4, :cond_0

    move-wide p2, p5

    :cond_0
    return-wide p2
.end method

.method public k(La/c/a/r$g;La/c/a/r$g;)La/c/a/r$g;
    .locals 3

    move-object v0, p1

    check-cast v0, La/c/a/w;

    .line 1
    iget v0, v0, La/c/a/w;->e:I

    .line 2
    move-object v1, p2

    check-cast v1, La/c/a/w;

    .line 3
    iget v1, v1, La/c/a/w;->e:I

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    .line 4
    move-object v2, p1

    check-cast v2, La/c/a/c;

    .line 5
    iget-boolean v2, v2, La/c/a/c;->b:Z

    if-nez v2, :cond_0

    add-int/2addr v1, v0

    .line 6
    check-cast p1, La/c/a/w;

    invoke-virtual {p1, v1}, La/c/a/w;->h(I)La/c/a/r$g;

    move-result-object p1

    :cond_0
    check-cast p1, La/c/a/w;

    invoke-virtual {p1, p2}, La/c/a/w;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-lez v0, :cond_2

    move-object p2, p1

    :cond_2
    return-object p2
.end method

.method public l(ZIZI)I
    .locals 0

    if-eqz p3, :cond_0

    move p2, p4

    :cond_0
    return p2
.end method

.method public m(La/c/a/n;La/c/a/n;)La/c/a/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/c/a/n<",
            "La/c/a/p$f;",
            ">;",
            "La/c/a/n<",
            "La/c/a/p$f;",
            ">;)",
            "La/c/a/n<",
            "La/c/a/p$f;",
            ">;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p1, La/c/a/n;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, La/c/a/n;->a()La/c/a/n;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p2, La/c/a/n;->a:La/c/a/c0;

    invoke-virtual {v1}, La/c/a/c0;->d()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p2, La/c/a/n;->a:La/c/a/c0;

    invoke-virtual {v1, v0}, La/c/a/c0;->c(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-virtual {p1, v1}, La/c/a/n;->c(Ljava/util/Map$Entry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p2, La/c/a/n;->a:La/c/a/c0;

    invoke-virtual {p2}, La/c/a/c0;->e()Ljava/lang/Iterable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {p1, v0}, La/c/a/n;->c(Ljava/util/Map$Entry;)V

    goto :goto_1

    :cond_2
    return-object p1
.end method
