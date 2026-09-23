.class public final Ln1/g;
.super Lk1/c;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf1/q1;


# static fields
.field public static final d:Ln1/g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ln1/g;

    .line 2
    .line 3
    sget-object v1, Lk1/m;->e:Lk1/m;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lk1/c;-><init>(Lk1/m;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Ln1/g;->d:Ln1/g;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()Lk1/e;
    .locals 1

    .line 1
    new-instance v0, Ln1/f;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lk1/e;-><init>(Lk1/c;)V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Ln1/f;->g:Ln1/g;

    .line 7
    .line 8
    return-object v0
.end method

.method public final builder()Li1/c;
    .locals 1

    .line 1
    new-instance v0, Ln1/f;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lk1/e;-><init>(Lk1/c;)V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Ln1/f;->g:Ln1/g;

    .line 7
    .line 8
    return-object v0
.end method

.method public final bridge containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lf1/t1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    check-cast p1, Lf1/t1;

    .line 8
    .line 9
    invoke-super {p0, p1}, Lk1/c;->containsKey(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final bridge containsValue(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lf1/y2;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    check-cast p1, Lf1/y2;

    .line 8
    .line 9
    invoke-super {p0, p1}, Ls8/f;->containsValue(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final d(Lf1/t1;Lf1/y2;)Ln1/g;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    iget-object v2, p0, Lk1/c;->a:Lk1/m;

    .line 7
    .line 8
    invoke-virtual {v2, v0, v1, p1, p2}, Lk1/m;->u(IILjava/lang/Object;Ljava/lang/Object;)Lj/g;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    new-instance p2, Ln1/g;

    .line 16
    .line 17
    iget-object v0, p1, Lj/g;->c:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lk1/m;

    .line 20
    .line 21
    iget v1, p0, Lk1/c;->b:I

    .line 22
    .line 23
    iget p1, p1, Lj/g;->b:I

    .line 24
    .line 25
    add-int/2addr v1, p1

    .line 26
    invoke-direct {p2, v0, v1}, Lk1/c;-><init>(Lk1/m;I)V

    .line 27
    .line 28
    .line 29
    return-object p2
.end method

.method public final bridge get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    instance-of v0, p1, Lf1/t1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    check-cast p1, Lf1/t1;

    .line 8
    .line 9
    invoke-super {p0, p1}, Lk1/c;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lf1/y2;

    .line 14
    .line 15
    return-object p1
.end method

.method public final bridge getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    instance-of v0, p1, Lf1/t1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object p2

    .line 6
    :cond_0
    check-cast p1, Lf1/t1;

    .line 7
    .line 8
    check-cast p2, Lf1/y2;

    .line 9
    .line 10
    invoke-super {p0, p1, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lf1/y2;

    .line 15
    .line 16
    return-object p1
.end method
