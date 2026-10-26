.class public Ld/j/d/n$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/j/d/n;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/j/d/n;


# direct methods
.method public constructor <init>(Ld/j/d/n;)V
    .locals 0

    iput-object p1, p0, Ld/j/d/n$a;->a:Ld/j/d/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ld/j/d/n$a;->a:Ld/j/d/n;

    iget-object v0, v0, Ld/j/d/n;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/j/d/n$a;->a:Ld/j/d/n;

    iget-object v0, v0, Ld/j/d/n;->b:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    iget-object v0, p0, Ld/j/d/n$a;->a:Ld/j/d/n;

    iget-object v1, v0, Ld/j/d/n;->c:Ld/j/d/n0$a;

    iget-object v2, v0, Ld/j/d/n;->b:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Ld/j/d/n;->d:Ld/g/i/a;

    check-cast v1, Ld/j/d/y$d;

    invoke-virtual {v1, v2, v0}, Ld/j/d/y$d;->a(Landroidx/fragment/app/Fragment;Ld/g/i/a;)V

    :cond_0
    return-void
.end method
