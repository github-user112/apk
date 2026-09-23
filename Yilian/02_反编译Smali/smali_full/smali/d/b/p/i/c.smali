.class public abstract Ld/b/p/i/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ld/g/h/a/b;",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ld/g/h/a/c;",
            "Landroid/view/SubMenu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/b/p/i/c;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final c(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 2

    instance-of v0, p1, Ld/g/h/a/b;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ld/g/h/a/b;

    iget-object v1, p0, Ld/b/p/i/c;->b:Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v1, Ld/e/a;

    invoke-direct {v1}, Ld/e/a;-><init>()V

    iput-object v1, p0, Ld/b/p/i/c;->b:Ljava/util/Map;

    :cond_0
    iget-object v1, p0, Ld/b/p/i/c;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    if-nez p1, :cond_1

    new-instance p1, Ld/b/p/i/j;

    iget-object v1, p0, Ld/b/p/i/c;->a:Landroid/content/Context;

    invoke-direct {p1, v1, v0}, Ld/b/p/i/j;-><init>(Landroid/content/Context;Ld/g/h/a/b;)V

    iget-object v1, p0, Ld/b/p/i/c;->b:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p1
.end method

.method public final d(Landroid/view/SubMenu;)Landroid/view/SubMenu;
    .locals 2

    instance-of v0, p1, Ld/g/h/a/c;

    if-eqz v0, :cond_2

    check-cast p1, Ld/g/h/a/c;

    iget-object v0, p0, Ld/b/p/i/c;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ld/e/a;

    invoke-direct {v0}, Ld/e/a;-><init>()V

    iput-object v0, p0, Ld/b/p/i/c;->c:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Ld/b/p/i/c;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    if-nez v0, :cond_1

    new-instance v0, Ld/b/p/i/s;

    iget-object v1, p0, Ld/b/p/i/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Ld/b/p/i/s;-><init>(Landroid/content/Context;Ld/g/h/a/c;)V

    iget-object v1, p0, Ld/b/p/i/c;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0

    :cond_2
    return-object p1
.end method
