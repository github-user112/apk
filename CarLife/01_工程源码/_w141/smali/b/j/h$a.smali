.class public Lb/j/h$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/j/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lb/j/d$b;

.field public b:Lb/j/e;


# direct methods
.method public constructor <init>(Lb/j/f;Lb/j/d$b;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    sget-object v0, Lb/j/j;->a:Ljava/util/Map;

    instance-of v0, p1, Lb/j/e;

    instance-of v1, p1, Lb/j/b;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    new-instance v0, Landroidx/lifecycle/FullLifecycleObserverAdapter;

    move-object v1, p1

    check-cast v1, Lb/j/b;

    check-cast p1, Lb/j/e;

    invoke-direct {v0, v1, p1}, Landroidx/lifecycle/FullLifecycleObserverAdapter;-><init>(Lb/j/b;Lb/j/e;)V

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    new-instance v0, Landroidx/lifecycle/FullLifecycleObserverAdapter;

    check-cast p1, Lb/j/b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/lifecycle/FullLifecycleObserverAdapter;-><init>(Lb/j/b;Lb/j/e;)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lb/j/e;

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lb/j/j;->c(Ljava/lang/Class;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    sget-object v1, Lb/j/j;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-static {v0, p1}, Lb/j/j;->a(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)Lb/j/c;

    move-result-object p1

    new-instance v0, Landroidx/lifecycle/SingleGeneratedAdapterObserver;

    invoke-direct {v0, p1}, Landroidx/lifecycle/SingleGeneratedAdapterObserver;-><init>(Lb/j/c;)V

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lb/j/c;

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Constructor;

    invoke-static {v3, p1}, Lb/j/j;->a(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)Lb/j/c;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    new-instance v0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;

    invoke-direct {v0, v1}, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;-><init>([Lb/j/c;)V

    goto :goto_1

    :cond_5
    new-instance v0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;

    invoke-direct {v0, p1}, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;-><init>(Ljava/lang/Object;)V

    .line 2
    :goto_1
    iput-object v0, p0, Lb/j/h$a;->b:Lb/j/e;

    iput-object p2, p0, Lb/j/h$a;->a:Lb/j/d$b;

    return-void
.end method


# virtual methods
.method public a(Lb/j/g;Lb/j/d$a;)V
    .locals 2

    invoke-virtual {p2}, Lb/j/d$a;->e()Lb/j/d$b;

    move-result-object v0

    iget-object v1, p0, Lb/j/h$a;->a:Lb/j/d$b;

    invoke-static {v1, v0}, Lb/j/h;->e(Lb/j/d$b;Lb/j/d$b;)Lb/j/d$b;

    move-result-object v1

    iput-object v1, p0, Lb/j/h$a;->a:Lb/j/d$b;

    iget-object v1, p0, Lb/j/h$a;->b:Lb/j/e;

    invoke-interface {v1, p1, p2}, Lb/j/e;->d(Lb/j/g;Lb/j/d$a;)V

    iput-object v0, p0, Lb/j/h$a;->a:Lb/j/d$b;

    return-void
.end method
