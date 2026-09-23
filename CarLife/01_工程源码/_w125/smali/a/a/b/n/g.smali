.class public La/a/b/n/g;
.super Lb/h/b/m;
.source ""


# static fields
.field public static V:Lcom/baidu/carlifevehicle/CarlifeActivity;

.field public static W:Landroid/content/Context;

.field public static X:La/a/b/n/k;


# instance fields
.field public Y:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lb/h/b/m;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, La/a/b/n/g;->Y:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public E(Landroid/os/Bundle;)V
    .locals 2

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lb/h/b/m;->F:Z

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "onActivityCreated"

    aput-object v1, p1, v0

    const-string v0, "BaseFragment"

    .line 2
    invoke-static {v0, p1}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public H(Landroid/app/Activity;)V
    .locals 2

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lb/h/b/m;->F:Z

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "onAttach"

    aput-object v1, p1, v0

    const-string v0, "BaseFragment"

    .line 2
    invoke-static {v0, p1}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public K(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lb/h/b/m;->K(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    new-array v0, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "onCreate"

    aput-object v2, v0, v1

    const-string v1, "BaseFragment"

    invoke-static {v1, v0}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1
    iget-boolean v0, p0, Lb/h/b/m;->D:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lb/h/b/m;->D:Z

    invoke-virtual {p0}, Lb/h/b/m;->A()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-boolean p1, p0, Lb/h/b/m;->A:Z

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lb/h/b/m;->u:Lb/h/b/z;

    invoke-virtual {p1}, Lb/h/b/z;->i()V

    :cond_0
    return-void
.end method

.method public O(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "onCreateView"

    aput-object p3, p1, p2

    const-string p2, "BaseFragment"

    invoke-static {p2, p1}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public P()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lb/h/b/m;->F:Z

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "onDestroy"

    aput-object v2, v0, v1

    const-string v1, "BaseFragment"

    .line 2
    invoke-static {v1, v0}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public Q()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lb/h/b/m;->F:Z

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "onDestroyView"

    aput-object v2, v0, v1

    const-string v1, "BaseFragment"

    .line 2
    invoke-static {v1, v0}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public R()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lb/h/b/m;->F:Z

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "onDetach"

    aput-object v2, v0, v1

    const-string v1, "BaseFragment"

    .line 2
    invoke-static {v1, v0}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public Y()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lb/h/b/m;->F:Z

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "onPause"

    aput-object v2, v0, v1

    const-string v1, "BaseFragment"

    .line 2
    invoke-static {v1, v0}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public e0()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lb/h/b/m;->F:Z

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "onResume"

    aput-object v2, v0, v1

    const-string v1, "BaseFragment"

    .line 2
    invoke-static {v1, v0}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public g0()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lb/h/b/m;->F:Z

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "onStart"

    aput-object v2, v0, v1

    const-string v1, "BaseFragment"

    .line 2
    invoke-static {v1, v0}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public h0()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lb/h/b/m;->F:Z

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "onStop"

    aput-object v2, v0, v1

    const-string v1, "BaseFragment"

    .line 2
    invoke-static {v1, v0}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
