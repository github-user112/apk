.class public abstract Lva/j;
.super Lva/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lva/u;


# instance fields
.field public b:Lva/h;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lva/i;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lva/h;->c:Lva/h;

    .line 5
    .line 6
    iput-object v0, p0, Lva/j;->b:Lva/h;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final d(Lva/k;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lva/j;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lva/j;->b:Lva/h;

    .line 6
    .line 7
    invoke-virtual {v0}, Lva/h;->b()Lva/h;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lva/j;->b:Lva/h;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lva/j;->c:Z

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lva/j;->b:Lva/h;

    .line 17
    .line 18
    iget-object p1, p1, Lva/k;->a:Lva/h;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    :goto_0
    iget-object v2, p1, Lva/h;->a:Lva/z;

    .line 25
    .line 26
    iget-object v3, v2, Lva/z;->b:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-ge v1, v3, :cond_1

    .line 33
    .line 34
    iget-object v2, v2, Lva/z;->b:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Ljava/util/Map$Entry;

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Lva/h;->g(Ljava/util/Map$Entry;)V

    .line 43
    .line 44
    .line 45
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {v2}, Lva/z;->c()Ljava/lang/Iterable;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Ljava/util/Map$Entry;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lva/h;->g(Ljava/util/Map$Entry;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    return-void
.end method
