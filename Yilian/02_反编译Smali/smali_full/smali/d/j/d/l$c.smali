.class public Ld/j/d/l$c;
.super Ld/j/d/v;
.source ""

# interfaces
.implements Ld/l/z;
.implements Ld/a/c;
.implements Ld/a/e/d;
.implements Ld/j/d/c0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/j/d/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld/j/d/v<",
        "Ld/j/d/l;",
        ">;",
        "Ld/l/z;",
        "Ld/a/c;",
        "Ld/a/e/d;",
        "Ld/j/d/c0;"
    }
.end annotation


# instance fields
.field public final synthetic e:Ld/j/d/l;


# direct methods
.method public constructor <init>(Ld/j/d/l;)V
    .locals 0

    iput-object p1, p0, Ld/j/d/l$c;->e:Ld/j/d/l;

    invoke-direct {p0, p1}, Ld/j/d/v;-><init>(Ld/j/d/l;)V

    return-void
.end method


# virtual methods
.method public a(Ld/j/d/y;Landroidx/fragment/app/Fragment;)V
    .locals 0

    iget-object p1, p0, Ld/j/d/l$c;->e:Ld/j/d/l;

    invoke-virtual {p1, p2}, Ld/j/d/l;->onAttachFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public b(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Ld/j/d/l$c;->e:Ld/j/d/l;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Ld/j/d/l$c;->e:Ld/j/d/l;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getActivityResultRegistry()Landroidx/activity/result/ActivityResultRegistry;
    .locals 1

    iget-object v0, p0, Ld/j/d/l$c;->e:Ld/j/d/l;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getActivityResultRegistry()Landroidx/activity/result/ActivityResultRegistry;

    move-result-object v0

    return-object v0
.end method

.method public getLifecycle()Ld/l/e;
    .locals 1

    iget-object v0, p0, Ld/j/d/l$c;->e:Ld/j/d/l;

    iget-object v0, v0, Ld/j/d/l;->mFragmentLifecycleRegistry:Ld/l/i;

    return-object v0
.end method

.method public getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;
    .locals 1

    iget-object v0, p0, Ld/j/d/l$c;->e:Ld/j/d/l;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public getViewModelStore()Ld/l/y;
    .locals 1

    iget-object v0, p0, Ld/j/d/l$c;->e:Ld/j/d/l;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getViewModelStore()Ld/l/y;

    move-result-object v0

    return-object v0
.end method
