.class public Ld/l/p;
.super Landroid/app/Fragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/l/p$b;,
        Ld/l/p$a;
    }
.end annotation


# instance fields
.field public a:Ld/l/p$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ld/l/e$a;)V
    .locals 2

    instance-of v0, p0, Ld/l/j;

    const-string v1, "handleLifecycleEvent"

    if-eqz v0, :cond_0

    check-cast p0, Ld/l/j;

    invoke-interface {p0}, Ld/l/j;->getLifecycle()Ld/l/i;

    move-result-object p0

    .line 1
    invoke-virtual {p0, v1}, Ld/l/i;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Ld/l/e$a;->a()Ld/l/e$b;

    move-result-object p1

    invoke-virtual {p0, p1}, Ld/l/i;->g(Ld/l/e$b;)V

    return-void

    .line 2
    :cond_0
    instance-of v0, p0, Ld/l/h;

    if-eqz v0, :cond_1

    check-cast p0, Ld/l/h;

    invoke-interface {p0}, Ld/l/h;->getLifecycle()Ld/l/e;

    move-result-object p0

    instance-of v0, p0, Ld/l/i;

    if-eqz v0, :cond_1

    check-cast p0, Ld/l/i;

    .line 3
    invoke-virtual {p0, v1}, Ld/l/i;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Ld/l/e$a;->a()Ld/l/e$b;

    move-result-object p1

    invoke-virtual {p0, p1}, Ld/l/i;->g(Ld/l/e$b;)V

    :cond_1
    return-void
.end method

.method public static c(Landroid/app/Activity;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Ld/l/p$b;->registerIn(Landroid/app/Activity;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v0, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Ld/l/p;

    invoke-direct {v2}, Ld/l/p;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final b(Ld/l/e$a;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Ld/l/p;->a(Landroid/app/Activity;Ld/l/e$a;)V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object p1, p0, Ld/l/p;->a:Ld/l/p$a;

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ld/l/p$a;->onCreate()V

    .line 2
    :cond_0
    sget-object p1, Ld/l/e$a;->ON_CREATE:Ld/l/e$a;

    invoke-virtual {p0, p1}, Ld/l/p;->b(Ld/l/e$a;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    sget-object v0, Ld/l/e$a;->ON_DESTROY:Ld/l/e$a;

    invoke-virtual {p0, v0}, Ld/l/p;->b(Ld/l/e$a;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ld/l/p;->a:Ld/l/p$a;

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    sget-object v0, Ld/l/e$a;->ON_PAUSE:Ld/l/e$a;

    invoke-virtual {p0, v0}, Ld/l/p;->b(Ld/l/e$a;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Ld/l/p;->a:Ld/l/p$a;

    if-eqz v0, :cond_0

    .line 1
    invoke-interface {v0}, Ld/l/p$a;->onResume()V

    .line 2
    :cond_0
    sget-object v0, Ld/l/e$a;->ON_RESUME:Ld/l/e$a;

    invoke-virtual {p0, v0}, Ld/l/p;->b(Ld/l/e$a;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    iget-object v0, p0, Ld/l/p;->a:Ld/l/p$a;

    if-eqz v0, :cond_0

    .line 1
    invoke-interface {v0}, Ld/l/p$a;->onStart()V

    .line 2
    :cond_0
    sget-object v0, Ld/l/e$a;->ON_START:Ld/l/e$a;

    invoke-virtual {p0, v0}, Ld/l/p;->b(Ld/l/e$a;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    sget-object v0, Ld/l/e$a;->ON_STOP:Ld/l/e$a;

    invoke-virtual {p0, v0}, Ld/l/p;->b(Ld/l/e$a;)V

    return-void
.end method
