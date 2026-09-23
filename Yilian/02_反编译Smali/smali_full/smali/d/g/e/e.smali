.class public Ld/g/e/e;
.super Landroid/app/Activity;
.source ""

# interfaces
.implements Ld/l/h;
.implements Ld/g/m/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/g/e/e$a;
    }
.end annotation


# instance fields
.field public mExtraDataMap:Ld/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/e/h<",
            "Ljava/lang/Class<",
            "+",
            "Ld/g/e/e$a;",
            ">;",
            "Ld/g/e/e$a;",
            ">;"
        }
    .end annotation
.end field

.field public mLifecycleRegistry:Ld/l/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ld/e/h;

    invoke-direct {v0}, Ld/e/h;-><init>()V

    iput-object v0, p0, Ld/g/e/e;->mExtraDataMap:Ld/e/h;

    new-instance v0, Ld/l/i;

    invoke-direct {v0, p0}, Ld/l/i;-><init>(Ld/l/h;)V

    iput-object v0, p0, Ld/g/e/e;->mLifecycleRegistry:Ld/l/i;

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1
    invoke-static {v0, p1}, Ld/g/m/s;->e(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    invoke-static {p0, v0, p0, p1}, Ld/g/m/d;->a(Ld/g/m/d$a;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1
    invoke-static {v0, p1}, Ld/g/m/s;->e(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public getExtraData(Ljava/lang/Class;)Ld/g/e/e$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ld/g/e/e$a;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Ld/g/e/e;->mExtraDataMap:Ld/e/h;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, p1, v1}, Ld/e/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    check-cast p1, Ld/g/e/e$a;

    return-object p1
.end method

.method public getLifecycle()Ld/l/e;
    .locals 1

    iget-object v0, p0, Ld/g/e/e;->mLifecycleRegistry:Ld/l/i;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Ld/l/p;->c(Landroid/app/Activity;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Ld/g/e/e;->mLifecycleRegistry:Ld/l/i;

    sget-object v1, Ld/l/e$b;->c:Ld/l/e$b;

    const-string v2, "markState"

    .line 1
    invoke-virtual {v0, v2}, Ld/l/i;->d(Ljava/lang/String;)V

    const-string v2, "setCurrentState"

    .line 2
    invoke-virtual {v0, v2}, Ld/l/i;->d(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ld/l/i;->g(Ld/l/e$b;)V

    .line 3
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public putExtraData(Ld/g/e/e$a;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Ld/g/e/e;->mExtraDataMap:Ld/e/h;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ld/e/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
