.class public Ld/j/d/l$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/a/d/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/j/d/l;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/j/d/l;


# direct methods
.method public constructor <init>(Ld/j/d/l;)V
    .locals 0

    iput-object p1, p0, Ld/j/d/l$b;->a:Ld/j/d/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    iget-object p1, p0, Ld/j/d/l$b;->a:Ld/j/d/l;

    iget-object p1, p1, Ld/j/d/l;->mFragments:Ld/j/d/t;

    .line 1
    iget-object p1, p1, Ld/j/d/t;->a:Ld/j/d/v;

    iget-object v0, p1, Ld/j/d/v;->d:Ld/j/d/y;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p1, v1}, Ld/j/d/y;->b(Ld/j/d/v;Ld/j/d/r;Landroidx/fragment/app/Fragment;)V

    .line 2
    iget-object p1, p0, Ld/j/d/l$b;->a:Ld/j/d/l;

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getSavedStateRegistry()Ld/r/b;

    move-result-object p1

    const-string v0, "android:support:fragments"

    invoke-virtual {p1, v0}, Ld/r/b;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    iget-object v0, p0, Ld/j/d/l$b;->a:Ld/j/d/l;

    iget-object v0, v0, Ld/j/d/l;->mFragments:Ld/j/d/t;

    .line 3
    iget-object v0, v0, Ld/j/d/t;->a:Ld/j/d/v;

    instance-of v1, v0, Ld/l/z;

    if-eqz v1, :cond_0

    iget-object v0, v0, Ld/j/d/v;->d:Ld/j/d/y;

    invoke-virtual {v0, p1}, Ld/j/d/y;->Y(Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you\'re still using retainNestedNonConfig()."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
