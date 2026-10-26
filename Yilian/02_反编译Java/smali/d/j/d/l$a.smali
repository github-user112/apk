.class public Ld/j/d/l$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/r/b$b;


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

    iput-object p1, p0, Ld/j/d/l$a;->a:Ld/j/d/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Ld/j/d/l$a;->a:Ld/j/d/l;

    invoke-virtual {v1}, Ld/j/d/l;->markFragmentsCreated()V

    iget-object v1, p0, Ld/j/d/l$a;->a:Ld/j/d/l;

    iget-object v1, v1, Ld/j/d/l;->mFragmentLifecycleRegistry:Ld/l/i;

    sget-object v2, Ld/l/e$a;->ON_STOP:Ld/l/e$a;

    invoke-virtual {v1, v2}, Ld/l/i;->e(Ld/l/e$a;)V

    iget-object v1, p0, Ld/j/d/l$a;->a:Ld/j/d/l;

    iget-object v1, v1, Ld/j/d/l;->mFragments:Ld/j/d/t;

    .line 1
    iget-object v1, v1, Ld/j/d/t;->a:Ld/j/d/v;

    iget-object v1, v1, Ld/j/d/v;->d:Ld/j/d/y;

    invoke-virtual {v1}, Ld/j/d/y;->Z()Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "android:support:fragments"

    .line 2
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-object v0
.end method
