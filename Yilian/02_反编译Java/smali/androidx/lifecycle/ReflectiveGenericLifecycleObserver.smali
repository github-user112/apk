.class public Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/l/f;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ld/l/b$a;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->a:Ljava/lang/Object;

    sget-object v0, Ld/l/b;->c:Ld/l/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ld/l/b;->b(Ljava/lang/Class;)Ld/l/b$a;

    move-result-object p1

    iput-object p1, p0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->b:Ld/l/b$a;

    return-void
.end method


# virtual methods
.method public d(Ld/l/h;Ld/l/e$a;)V
    .locals 3

    iget-object v0, p0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->b:Ld/l/b$a;

    iget-object v1, p0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->a:Ljava/lang/Object;

    .line 1
    iget-object v2, v0, Ld/l/b$a;->a:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2, p1, p2, v1}, Ld/l/b$a;->a(Ljava/util/List;Ld/l/h;Ld/l/e$a;Ljava/lang/Object;)V

    iget-object v0, v0, Ld/l/b$a;->a:Ljava/util/Map;

    sget-object v2, Ld/l/e$a;->ON_ANY:Ld/l/e$a;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0, p1, p2, v1}, Ld/l/b$a;->a(Ljava/util/List;Ld/l/h;Ld/l/e$a;Ljava/lang/Object;)V

    return-void
.end method
