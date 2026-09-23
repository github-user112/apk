.class public final Ld/l/r;
.super Ld/l/v;
.source ""


# static fields
.field public static final f:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final g:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/app/Application;

.field public final b:Ld/l/u;

.field public final c:Landroid/os/Bundle;

.field public final d:Ld/l/e;

.field public final e:Ld/r/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-class v0, Ld/l/q;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/app/Application;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Ld/l/r;->f:[Ljava/lang/Class;

    new-array v1, v2, [Ljava/lang/Class;

    aput-object v0, v1, v3

    sput-object v1, Ld/l/r;->g:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Ld/r/d;Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LambdaLast"
        }
    .end annotation

    invoke-direct {p0}, Ld/l/v;-><init>()V

    invoke-interface {p2}, Ld/r/d;->getSavedStateRegistry()Ld/r/b;

    move-result-object v0

    iput-object v0, p0, Ld/l/r;->e:Ld/r/b;

    invoke-interface {p2}, Ld/l/h;->getLifecycle()Ld/l/e;

    move-result-object p2

    iput-object p2, p0, Ld/l/r;->d:Ld/l/e;

    iput-object p3, p0, Ld/l/r;->c:Landroid/os/Bundle;

    iput-object p1, p0, Ld/l/r;->a:Landroid/app/Application;

    if-eqz p1, :cond_1

    .line 1
    sget-object p2, Ld/l/t;->c:Ld/l/t;

    if-nez p2, :cond_0

    new-instance p2, Ld/l/t;

    invoke-direct {p2, p1}, Ld/l/t;-><init>(Landroid/app/Application;)V

    sput-object p2, Ld/l/t;->c:Ld/l/t;

    :cond_0
    sget-object p1, Ld/l/t;->c:Ld/l/t;

    goto :goto_0

    .line 2
    :cond_1
    sget-object p1, Ld/l/w;->a:Ld/l/w;

    if-nez p1, :cond_2

    new-instance p1, Ld/l/w;

    invoke-direct {p1}, Ld/l/w;-><init>()V

    sput-object p1, Ld/l/w;->a:Ld/l/w;

    :cond_2
    sget-object p1, Ld/l/w;->a:Ld/l/w;

    .line 3
    :goto_0
    iput-object p1, p0, Ld/l/r;->b:Ld/l/u;

    return-void
.end method

.method public static d(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    invoke-static {p1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Ld/l/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ld/l/s;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Ld/l/r;->c(Ljava/lang/String;Ljava/lang/Class;)Ld/l/s;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ld/l/s;)V
    .locals 2

    iget-object v0, p0, Ld/l/r;->e:Ld/r/b;

    iget-object v1, p0, Ld/l/r;->d:Ld/l/e;

    invoke-static {p1, v0, v1}, Landroidx/lifecycle/SavedStateHandleController;->h(Ld/l/s;Ld/r/b;Ld/l/e;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/Class;)Ld/l/s;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ld/l/s;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-class v0, Ld/l/a;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Ld/l/r;->a:Landroid/app/Application;

    if-eqz v1, :cond_0

    sget-object v1, Ld/l/r;->f:[Ljava/lang/Class;

    invoke-static {p2, v1}, Ld/l/r;->d(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Ld/l/r;->g:[Ljava/lang/Class;

    invoke-static {p2, v1}, Ld/l/r;->d(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    iget-object p1, p0, Ld/l/r;->b:Ld/l/u;

    invoke-interface {p1, p2}, Ld/l/u;->a(Ljava/lang/Class;)Ld/l/s;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v2, p0, Ld/l/r;->e:Ld/r/b;

    iget-object v3, p0, Ld/l/r;->d:Ld/l/e;

    iget-object v4, p0, Ld/l/r;->c:Landroid/os/Bundle;

    .line 1
    invoke-virtual {v2, p1}, Ld/r/b;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v5, v4}, Ld/l/q;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Ld/l/q;

    move-result-object v4

    new-instance v5, Landroidx/lifecycle/SavedStateHandleController;

    invoke-direct {v5, p1, v4}, Landroidx/lifecycle/SavedStateHandleController;-><init>(Ljava/lang/String;Ld/l/q;)V

    invoke-virtual {v5, v2, v3}, Landroidx/lifecycle/SavedStateHandleController;->i(Ld/r/b;Ld/l/e;)V

    invoke-static {v2, v3}, Landroidx/lifecycle/SavedStateHandleController;->j(Ld/r/b;Ld/l/e;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 2
    :try_start_0
    iget-object v0, p0, Ld/l/r;->a:Landroid/app/Application;

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Ld/l/r;->a:Landroid/app/Application;

    aput-object v3, v0, p1

    .line 3
    iget-object p1, v5, Landroidx/lifecycle/SavedStateHandleController;->c:Ld/l/q;

    aput-object p1, v0, v2

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-array v0, v2, [Ljava/lang/Object;

    .line 5
    iget-object v2, v5, Landroidx/lifecycle/SavedStateHandleController;->c:Ld/l/q;

    aput-object v2, v0, p1

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    check-cast p1, Ld/l/s;

    const-string v0, "androidx.lifecycle.savedstate.vm.tag"

    invoke-virtual {p1, v0, v5}, Ld/l/s;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An exception happened in constructor of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " cannot be instantiated."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to access "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
