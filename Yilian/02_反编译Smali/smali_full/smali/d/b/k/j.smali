.class public abstract Ld/b/k/j;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ld/e/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/e/c<",
            "Ljava/lang/ref/WeakReference<",
            "Ld/b/k/j;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final b:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ld/e/c;

    const/4 v1, 0x0

    .line 1
    invoke-direct {v0, v1}, Ld/e/c;-><init>(I)V

    .line 2
    sput-object v0, Ld/b/k/j;->a:Ld/e/c;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ld/b/k/j;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Landroid/app/Activity;Ld/b/k/i;)Ld/b/k/j;
    .locals 2

    new-instance v0, Ld/b/k/k;

    const/4 v1, 0x0

    .line 1
    invoke-direct {v0, p0, v1, p1, p0}, Ld/b/k/k;-><init>(Landroid/content/Context;Landroid/view/Window;Ld/b/k/i;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static e(Landroid/app/Dialog;Ld/b/k/i;)Ld/b/k/j;
    .locals 3

    new-instance v0, Ld/b/k/k;

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p0}, Ld/b/k/k;-><init>(Landroid/content/Context;Landroid/view/Window;Ld/b/k/i;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static k(Ld/b/k/j;)V
    .locals 4

    sget-object v0, Ld/b/k/j;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ld/b/k/j;->a:Ld/e/c;

    invoke-virtual {v1}, Ld/e/c;->iterator()Ljava/util/Iterator;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    move-object v2, v1

    check-cast v2, Ld/e/g$a;

    :try_start_1
    invoke-virtual {v2}, Ld/e/g$a;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/b/k/j;

    if-eq v3, p0, :cond_1

    if-nez v3, :cond_0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public abstract c(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract f(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.end method

.method public abstract g()V
.end method

.method public abstract h()V
.end method

.method public abstract i(Landroid/os/Bundle;)V
.end method

.method public abstract j()V
.end method

.method public abstract l(I)Z
.end method

.method public abstract m(I)V
.end method

.method public abstract n(Landroid/view/View;)V
.end method

.method public abstract o(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract p(Ljava/lang/CharSequence;)V
.end method
