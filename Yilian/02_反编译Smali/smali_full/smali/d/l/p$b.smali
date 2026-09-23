.class public Ld/l/p$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/l/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerIn(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Ld/l/p$b;

    invoke-direct {v0}, Ld/l/p$b;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    sget-object p2, Ld/l/e$a;->ON_CREATE:Ld/l/e$a;

    invoke-static {p1, p2}, Ld/l/p;->a(Landroid/app/Activity;Ld/l/e$a;)V

    return-void
.end method

.method public onActivityPostResumed(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Ld/l/e$a;->ON_RESUME:Ld/l/e$a;

    invoke-static {p1, v0}, Ld/l/p;->a(Landroid/app/Activity;Ld/l/e$a;)V

    return-void
.end method

.method public onActivityPostStarted(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Ld/l/e$a;->ON_START:Ld/l/e$a;

    invoke-static {p1, v0}, Ld/l/p;->a(Landroid/app/Activity;Ld/l/e$a;)V

    return-void
.end method

.method public onActivityPreDestroyed(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Ld/l/e$a;->ON_DESTROY:Ld/l/e$a;

    invoke-static {p1, v0}, Ld/l/p;->a(Landroid/app/Activity;Ld/l/e$a;)V

    return-void
.end method

.method public onActivityPrePaused(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Ld/l/e$a;->ON_PAUSE:Ld/l/e$a;

    invoke-static {p1, v0}, Ld/l/p;->a(Landroid/app/Activity;Ld/l/e$a;)V

    return-void
.end method

.method public onActivityPreStopped(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Ld/l/e$a;->ON_STOP:Ld/l/e$a;

    invoke-static {p1, v0}, Ld/l/p;->a(Landroid/app/Activity;Ld/l/e$a;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
