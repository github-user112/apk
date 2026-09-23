.class public final Lia/c0;
.super Lub/k;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final synthetic b:Lv9/e;

.field public final synthetic c:Ljava/util/Set;

.field public final synthetic d:Lf9/k;


# direct methods
.method public constructor <init>(Lv9/e;Ljava/util/Set;Lf9/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lia/c0;->b:Lv9/e;

    .line 5
    .line 6
    iput-object p2, p0, Lia/c0;->c:Ljava/util/Set;

    .line 7
    .line 8
    iput-object p3, p0, Lia/c0;->d:Lf9/k;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    check-cast p1, Lv9/e;

    .line 2
    .line 3
    const-string v0, "current"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lia/c0;->b:Lv9/e;

    .line 9
    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-interface {p1}, Lv9/e;->O()Leb/o;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, "getStaticScope(...)"

    .line 18
    .line 19
    invoke-static {p1, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    instance-of v0, p1, Lia/e0;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lia/c0;->d:Lf9/k;

    .line 27
    .line 28
    invoke-interface {v0, p1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Ljava/util/Collection;

    .line 33
    .line 34
    iget-object v0, p0, Lia/c0;->c:Ljava/util/Set;

    .line 35
    .line 36
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    return p1

    .line 41
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 42
    return p1
.end method

.method public final bridge synthetic j()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 2
    .line 3
    return-object v0
.end method
