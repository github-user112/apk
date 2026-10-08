.class public Lb/h/b/p$a;
.super Lb/h/b/z;
.source ""

# interfaces
.implements Lb/j/u;
.implements Lb/a/e;
.implements Lb/a/g/e;
.implements Lb/h/b/g0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/h/b/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/h/b/z<",
        "Lb/h/b/p;",
        ">;",
        "Lb/j/u;",
        "Lb/a/e;",
        "Lb/a/g/e;",
        "Lb/h/b/g0;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lb/h/b/p;


# direct methods
.method public constructor <init>(Lb/h/b/p;)V
    .locals 0

    iput-object p1, p0, Lb/h/b/p$a;->f:Lb/h/b/p;

    invoke-direct {p0, p1}, Lb/h/b/z;-><init>(Lb/h/b/p;)V

    return-void
.end method


# virtual methods
.method public a(Lb/h/b/c0;Lb/h/b/m;)V
    .locals 0

    iget-object p1, p0, Lb/h/b/p$a;->f:Lb/h/b/p;

    invoke-virtual {p1}, Lb/h/b/p;->S0()V

    return-void
.end method

.method public a0()Lb/j/t;
    .locals 1

    iget-object v0, p0, Lb/h/b/p$a;->f:Lb/h/b/p;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->a0()Lb/j/t;

    move-result-object v0

    return-object v0
.end method

.method public b()Lb/j/d;
    .locals 1

    iget-object v0, p0, Lb/h/b/p$a;->f:Lb/h/b/p;

    iget-object v0, v0, Lb/h/b/p;->j:Lb/j/h;

    return-object v0
.end method

.method public c(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lb/h/b/p$a;->f:Lb/h/b/p;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lb/h/b/p$a;->f:Lb/h/b/p;

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

.method public e()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/h/b/p$a;->f:Lb/h/b/p;

    return-object v0
.end method

.method public f()Landroid/view/LayoutInflater;
    .locals 2

    iget-object v0, p0, Lb/h/b/p$a;->f:Lb/h/b/p;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lb/h/b/p$a;->f:Lb/h/b/p;

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public g(Lb/h/b/m;)Z
    .locals 0

    iget-object p1, p0, Lb/h/b/p$a;->f:Lb/h/b/p;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public h(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lb/h/b/p$a;->f:Lb/h/b/p;

    .line 1
    sget v1, Lb/e/b/c;->b:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lb/h/b/p$a;->f:Lb/h/b/p;

    invoke-virtual {v0}, Lb/h/b/p;->T0()V

    return-void
.end method

.method public j()Landroidx/activity/OnBackPressedDispatcher;
    .locals 1

    iget-object v0, p0, Lb/h/b/p$a;->f:Lb/h/b/p;

    .line 1
    iget-object v0, v0, Landroidx/activity/ComponentActivity;->g:Landroidx/activity/OnBackPressedDispatcher;

    return-object v0
.end method

.method public y()Lb/a/g/d;
    .locals 1

    iget-object v0, p0, Lb/h/b/p$a;->f:Lb/h/b/p;

    .line 1
    iget-object v0, v0, Landroidx/activity/ComponentActivity;->h:Lb/a/g/d;

    return-object v0
.end method
